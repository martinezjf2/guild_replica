class StudentsRegisteredCoursesController < ApplicationController
    before_action :require_login

    def show
        # @course = RegisterCourse.find_by(id: params[:id])
        @course = current_student.register_courses.find_by(id: params[:id])
        # invoke something here to pass the register_id as a param to the button, 
    end

    def destroy
        @course = current_student.register_courses.find_by(id: params[:id])
        @course.delete
        # binding.pry
        redirect_to student_courses_path(current_student.id)
    end

end
