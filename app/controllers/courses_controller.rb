class CoursesController < ApplicationController
    def index
        @course = Courses.all
    end

    def new
        @course = Course.new
    end

    def create

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
        # params.require(:course).permit(#list attribute in keys)
    end

end
