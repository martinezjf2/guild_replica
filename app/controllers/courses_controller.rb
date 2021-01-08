class CoursesController < ApplicationController
    before_action :require_login
    
    
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
        @course.student_id = params[:student_id]
        # binding.pry


    end

    def create
        @course = Course.new(course_params)
        # binding.pry
        if @course.save
            # binding.pry
            redirect_to student_course_path(@course.student_id, @course), notice: "Course Successfully Added!"
        else
            render :new, alert: "Not Saved, Please fill out the requirements!"
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
            redirect_to student_courses_path(@course.student_id), notice: "Course Successfully Updated!"
        else
            render :edit, alert: "Please fill out the Missing Fields."
        end

    end

    def destroy
        @course = Course.find_by(id: params[:id])
        @course.destroy
        redirect_to student_courses_path(@course.student_id), notice: "Course Successfully Deleted!"
            
    end

    private

    def course_params
        params.require(:course).permit(:name, :description, :grade, :year_taken, :student_id)
    end

    def set_student
        @student = Student.find(id: params[:id])
    end

end
