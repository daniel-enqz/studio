class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_studio, only: [:show]

  def index
    @studios = policy_scope(Studio)
  end

  def show
    authorize @studio
  end

  def new
    @studio = Studio.new
    authorize @studio
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.owner = current_user
    authorize @studio
    if @studio.save
      redirect_to studio_path(@studio), notice: 'Studio was successfully created.'
    else
      render :new
    end
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def studio_params
    params.require(:studio).permit(:name, :address, :photo, :owner, :details)
  end
end
