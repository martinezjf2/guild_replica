class CoursesController < ApplicationController
    before_action :require_login
    
    
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
        @course.student_id = params[:student_id]
    end

    def create
        @course = current_student.courses.new(course_params)
        if @course.save 
            redirect_to student_course_path(@course.student_id, @course)
            flash[:message] = "Successfully Added!"
        else
            render :new
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
            redirect_to student_courses_path(@course.student_id)
        else
            render :edit
        end

    end

    def destroy
        @course = Course.find_by(id: params[:id])
        @course.destroy
        redirect_to student_courses_path(@course.student_id)
            
    end

    private

    def course_params
        params.require(:course).permit(:name, :description, :grade, :year_taken, :student_id)
    end

end
