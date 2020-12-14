class StudentsController < ApplicationController
    # before_action :redirect_to_login, only: [:new]

    def home

    end

    def show
        @student = Student.find_by(id: params[:id])
    end


    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = @student.id
            redirect_to student_courses_path(@student)
        else
            render :new
        end
    end

    def edit
        @student = Student.find_by(id: params[:id])
    end

    def update
        @student = Student.find_by(id: params[:id])
        @student.update(student_params)
        if @student.save
            redirect_to student_courses_path(@student)
            flash[:message] = "Successfully Updated"
        else
            render :edit
            flash[:message] = "Missing Fields, Please Try Again!"
        end

    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
    end
end
