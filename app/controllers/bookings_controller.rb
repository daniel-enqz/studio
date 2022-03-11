class BookingsController < ApplicationController
  before_action :set_studio, only: %i[edit update]

  def create
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new(booking_params)
    @booking.studio = @studio
    @booking.customer = current_user
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render 'studios/show'
    end
  end

  def edit
    authorize @studio
  end

  def update
    authorize @studio
    if @studio.update(studio_params)
      redirect_to dashboard_path(@studio)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end

  def set_studio
    @studio = Studio.find(params[:id])
  end
end
