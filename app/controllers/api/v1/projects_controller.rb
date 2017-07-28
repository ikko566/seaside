#app/controllers/api/projects_contoroller.rb'
module Api
  module V1
    class ProjectsController < ApplicationController

      def index
        @projects = Project.all
        render json: @projects
      end
      def show
        @projects = Project.all
        render json: @projects
      end
      
      # POST /projects.json
      def create
            @project = Project.new(project_params)
            @project.save

      end
      private
      def project_params
        params.require(:project).permit(:alias, :title, :description, :publication, :expermien_id, :analysis_id, :client_id, :collector_id, :user_id)
      end


    end
  end
end
