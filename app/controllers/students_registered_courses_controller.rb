class StudentsRegisteredCoursesController < ApplicationController
    before_action :require_login

    def show
        # @course = RegisterCourse.find_by(id: params[:id])
        @course = current_student.register_courses.find_by(id: params[:id])
    end

    def destroy
        # binding.pry
        @register_courses = RegisterCourse.all
        @course = current_student.register_courses.find_by(id: params[:id])
        # binding.pry
        @course.destroy
        # binding.pry
        # @register_course.push(@course)
        # @register_courses << RegisterCourse.new(name: @course.name, end: @course.end, start: @course.start, description: @course.description)
        # binding.pry
        redirect_to student_courses_path(current_student.id)
    end

    # def destroy
    #     binding.pry
    #     # @course = StudentRegisteredCourse.find_by(id: params[:id])
    #     @course = current_student.students_registered_courses.find_by(id: params[:id])
    #     binding.pry
    #     @course.destroy
    #     # binding.pry
    #     # @register_course.push(@course)
    #     # @register_courses << RegisterCourse.new(name: @course.name, end: @course.end, start: @course.start, description: @course.description)
    #     # binding.pry
    #     redirect_to student_courses_path(current_student.id)
    # end

    private

    # def register_course_params
        
    #     params.require(:register_course).permit(:name, :end, :start, :description)
          
    # end
end
