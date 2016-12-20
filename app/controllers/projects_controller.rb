class ProjectsController < ApplicationController
	
	def index
		@projects=Project.all
	end

	def new
		@project=Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:notice] = "Project has been created"
			redirect_to @project
		else
			flash.now[:alert] = "Project has not been created"
			render  "new"
		end
	end

	def show
		@project=Project.find(params[:id])
	end

	def edit
		@project=Project.find(params[:id])
	end

	def update
		@project=Project.find(params[:id])
		if @project.update(project_params)
			flash[:notice]= "project updated"
			redirect_to @project
		else
			flash.now[:notice]= "your project could not be updated"
			render "edit"
		end
	end

	def destroy
		@project=Project.find(params[:id])
		@project.destroy

		flash[:notice]	= "project has been deleted"
		redirect_to projects_path
	end

	private
		def project_params
			params.require(:project).permit(:name, :description)
		end

end
