class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = current_user.bookings.find(params[:id])
    @markers = [{
      lat: @booking.project.latitude,
      lng: @booking.project.longitude,
      icon: ActionController::Base.helpers.asset_path("#{@booking.project.category.name.downcase}.png")
    }]
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @project = Project.find(params[:project_id])
    @booking.project = @project
    if @booking.save
      redirect_to bookings_path
    else
      render 'projects/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
