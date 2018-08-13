class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save
    # figure out where to redirect to
  end

  def destroy
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
