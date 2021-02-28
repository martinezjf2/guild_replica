class StudentsRegisteredCoursesController < ApplicationController
    before_action :require_login

    def show
        # @course = RegisterCourse.find_by(id: params[:id])
        @course = current_student.register_courses.find_by(id: params[:id])
    end

    def destroy
        @course = current_student.register_courses.find_by(id: params[:id])
        @course.destroy
        redirect_to student_courses_path(current_student.id)
    end
end
