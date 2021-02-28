class RegisterCoursesController < ApplicationController
    before_action :require_login

    def index
        @register_courses = RegisterCourse.all
    end

    def show
        @register_course = RegisterCourse.find_by(id: params[:id])       
    end

    def new     
        @register_course = current_student.register_courses.new
    end

    def create
        @register_course = RegisterCourse.find_by(id: params[:register_course])
        current_student.register_courses << @register_course
        redirect_to student_courses_path(current_student.id)
    end

    def delete
        # @register_course = RegisterCourse.find_by(id: params[:id])
        # @register_course.destroy       
    end

    private

    def register_courses_params
        binding.pry
        params.permit(:register_course)
    end
end
