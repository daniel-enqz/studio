class BookingsController < ApplicationController

  # /studios/26/booking/new
  #         studio_id

  def create
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new(booking_params)
    @booking.studio = @studio

    authorize @booking
    if @booking.save
      redirect_to studio_path(@studio)
    else
      render 'studios/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
