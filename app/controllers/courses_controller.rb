class CoursesController < ApplicationController
    before_action :require_login
    
    def index
        @course = Course.all
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

    end

    def destroy
        
    end

    private

    def course_params
        params.require(:course).permit(:name, :description, :grade, :year_taken, :student_id)
    end

end
