class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  # def projects_dashboard
  #   @projects = current_user.projects
  # end

  def bookings_dashboard
    @bookings = current_user.bookings
  end
end
