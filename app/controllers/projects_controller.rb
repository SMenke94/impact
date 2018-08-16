class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_project, only: [ :show, :edit, :update, :destroy ]

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

    @markers = @projects.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/project-card", locals: { project: project }) }
      }
    end
  end

  def show
    @booking = Booking.new
    @markers = [{ lat: @project.latitude, lng: @project.longitude}]
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

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :location, :category_id, :capacity, :requirement, :photo, :full_description)
  end
end
