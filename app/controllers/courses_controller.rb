class CoursesController < ApplicationController
    before_action :require_login
    
    
    def index
        @student = Student.find_by(id: params[:student_id])
        if params[:search]
            @courses = @student.courses.search(params[:search].capitalize)
        else
            @courses = @student.courses
        end
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
        @course = find_course
    end

    def edit
        @course = find_course
    end

    def update
        @course = find_course

       if @course.update(course_params)
            redirect_to student_courses_path(@course.student_id), success: "Course Successfully Updated!"
        else
            redirect_to edit_student_course_path(@course.student_id, @course), danger: "Please fill out the Missing Fields."
        end

    end

    def destroy
        @course = find_course
        @course.destroy
        redirect_to student_courses_path(@course.student_id), success: "Course Successfully Deleted!"
            
    end

    private

    def course_params
        params.require(:course).permit(:name, :description, :grade, :year_taken)
    end

    def set_student
        @student = current_student
    end

end
