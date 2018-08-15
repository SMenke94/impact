class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @categories = Category.all
  end

  def bookings_dashboard
    @bookings = current_user.bookings
  end
end
