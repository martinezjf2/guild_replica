class RegisterCoursesController < ApplicationController
    before_action :require_login

    def index
        @register_courses = RegisterCourse.all
    end

    def show
        
    end

    def create

    end
end
