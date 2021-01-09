class CoursesController < ApplicationController
    before_action :require_login
    
    
    def index
        @student = Student.find_by(id: params[:student_id])
        @courses = @student.courses
    end

    def new       
        @course = current_student.courses.new        
    end

    def create
        @course = current_student.courses.new(course_params)
        
        if @course.save
            
            redirect_to student_course_path(@course.student_id, @course), success: "Course Successfully Added!"
        else
            render :new, danger: "Not Saved, Please fill out the requirements!"
        end
    end

    def show
        @course = Course.find_by(id: params[:id])
    end

    def edit
        @course = Course.find_by(id: params[:id])
    end

    def update
        @course = Course.find_by(id: params[:id])
        # binding.pry

       if @course.update(course_params)
            redirect_to student_courses_path(@course.student_id), success: "Course Successfully Updated!"
        else
            render :edit, danger: "Please fill out the Missing Fields."
        end

    end

    def destroy
        @course = Course.find_by(id: params[:id])
        @course.destroy
        redirect_to student_courses_path(@course.student_id), notice: "Course Successfully Deleted!"
            
    end

    private

    def course_params
        params.require(:course).permit(:name, :description, :grade, :year_taken)
    end

    def set_student
        @student = current_student
    end

end
