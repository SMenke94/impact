class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @categories = Category.all
  end

  def projects
    @projects = current_user.projects
  end

  def project_details
    @project = current_user.projects.find(params[:id])
  end
end
