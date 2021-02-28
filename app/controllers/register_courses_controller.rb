class RegisterCoursesController < ApplicationController
    before_action :require_login

    def index
        if params[:search]
            @register_courses = RegisterCourse.search(params[:search].capitalize)
        else
            @register_courses = RegisterCourse.all
        end
    end

    def show
        @register_course = RegisterCourse.find_by(id: params[:id])       
    end

    def new     
        @register_course = current_student.register_courses.new
    end

    def create
        # binding.pry
        @register_course = RegisterCourse.find_by(id: params[:register_course])
        @register_course.student_id = params[:student_id]
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
