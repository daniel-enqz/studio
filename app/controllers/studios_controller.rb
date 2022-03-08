class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @studios = Studio.all
  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.owner = current_user
    if @studio.save
      redirect_to root_path, notice: 'Studio was successfully created.'
    else
      render :new
    end
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :address, :photo, :owner)
  end
end
