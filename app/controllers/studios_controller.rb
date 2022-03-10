class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_studio, only: %i[show edit update destroy]

  def index
    if params.dig(:search, :query).present?
      @studios = policy_scope(Studio).where("name ILIKE ?", "%#{params.dig(:search, :query)}%")
    else
      @studios = policy_scope(Studio)
    end
  end

  def show
    authorize @studio
    @booking = Booking.new
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

  def edit
    authorize @studio
  end

  def update
    authorize @studio
    if @studio.update(studio_params)
      redirect_to studio_path(@studio)
    else
      render :edit
    end
  end

  def destroy
    authorize @studio
    @studio.destroy
    redirect_to dashboard_path, notice: 'List was successfully destroyed.'
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def studio_params
    params.require(:studio).permit(:name, :address, :photo, :owner, :details)
  end
end
