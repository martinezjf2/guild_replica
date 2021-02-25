class RegisterCoursesController < ApplicationController
    before_action :require_login

    def index
        @register_courses = RegisterCourse.all
    end

    def show
        @course = RegisterCourse.find_by(id: params[:id])       
    end

    def create

    end
end
