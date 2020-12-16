class CoursesController < ApplicationController
    before_action :require_login
    
    def index
        @course = Course.all
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save 
            redirect_to course_path(@course)
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
