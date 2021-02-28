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
        # @register_course.push(@course)
        # @register_courses << RegisterCourse.new(name: @course.name, end: @course.end, start: @course.start, description: @course.description)
        # binding.pry
        redirect_to student_courses_path(current_student.id)
    end

    # def destroy
    #     # @course = StudentRegisteredCourse.find_by(id: params[:id])
    #     @course = current_student.students_registered_courses.find_by(id: params[:id])
    #     @course.destroy
    #     # @register_course.push(@course)
    #     # @register_courses << RegisterCourse.new(name: @course.name, end: @course.end, start: @course.start, description: @course.description)
    #     redirect_to student_courses_path(current_student.id)
    # end

    private

#     def register_course_params     
#         params.permit(:register_course_id)     
#     end
end
