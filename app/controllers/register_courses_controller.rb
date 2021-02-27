class RegisterCoursesController < ApplicationController
    before_action :require_login

    def index
        @register_courses = RegisterCourse.all
    end

    def show
        @register_course = RegisterCourse.find_by(id: params[:id])       
    end

    def new     
        @register_course = current_student.register_courses.new(register_courses_params)  
    end

    def create
        binding.pry
        # @course = RegisterCourse.find_by(id: params[:id])       
        @register_course = current_student.register_courses.new(register_courses_params)
        binding.pry
        # if @course.save   
        #     redirect_to student_course_path(@course.student_id, @course), success: "Course Successfully Added!"
        # else
        #     render :new, danger: "Not Saved, Please fill out the requirements!"
        # end
        # here i would redirect it to the students_courses_path
        redirect_to student_courses_path(current_student.id)
    end

    def destroy
        
    end

    private

    def register_courses_params
        binding.pry
        params.require(:register_course).permit(:name, :end, :start, :description, :student_id)
    end
end
