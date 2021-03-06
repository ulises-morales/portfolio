class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def angular
    @angular_projects = Project.angular
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Your portfolio item is now live' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    # Performs the lookup
    @project = Project.find(params[:id])

    # Destroy/delete the record
    @project.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Record was removed.' }
    end
  end

  private
  def project_params
    params.require(:project).permit(:title,
                                    :subtitle,
                                    :body,
                                    technologies_attributes: [:name]
                                   )
  end

end
