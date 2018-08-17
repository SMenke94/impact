class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_project, only: [ :show, :edit, :update, :destroy, :toggle_active_status ]

  def index
    if params[:query].present? && params[:query] != ""
      sql_query = " \
        projects.title ILIKE :query \
        OR projects.description ILIKE :query \
        OR projects.location ILIKE :query \
        OR categories.name ILIKE :query \
      "
      @projects = Project.joins(:category).where(sql_query, query: "%#{params[:query]}%")
    else
      @projects = Project.all
    end

    @active = []
    @projects.each { |project|  project.active ? @active << project : project }

    @markers = @active.map do |project|
        {
          lat: project.latitude,
          lng: project.longitude,
          infoWindow: { content: render_to_string(partial: "/shared/project-card", locals: { project: project }) },
          icon: ActionController::Base.helpers.asset_path("#{project.category.name.downcase}.png")
        }
    end
  end

  def show
    @booking = Booking.new
    @markers = [{
      lat: @project.latitude,
      lng: @project.longitude,
      icon: ActionController::Base.helpers.asset_path("#{@project.category.name.downcase}.png")
    }]
    @similar_projects = Project.where(category: @project.category)
    @similar_locations = Project.near([@project.latitude, @project.longitude], 500)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  def toggle_active_status
    @project.active = !@project.active
    @project.save
    redirect_to my_projects_path
end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :location, :category_id, :capacity, :requirement, :photo, :full_description, :address)
  end
end
