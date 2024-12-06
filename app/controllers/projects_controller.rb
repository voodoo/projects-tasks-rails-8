class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order(created_at: :desc)
  end    
  def create
    @project = Project.new(project_params)
    
    if @project.save
      redirect_to project_path(@project), notice: 'Project created successfully'
    else
      redirect_to root_path, alert: 'Failed to create project'
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path, notice: 'Project deleted successfully'
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end 