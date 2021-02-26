class StudentsController < ApplicationController
    before_action :require_login, only: [:show, :edit, :update]

    def home
        redirect_homepage
    end

    def show
        @student = find_student
    end


    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = @student.id
            redirect_to student_path(@student), success: "User Successfully Created!"
        else
            redirect_to '/signup', danger: "Missing Fields, Please Try Again."
        end
    end

    def edit
        @student = find_student
    end

    def update
        @student = find_student
        @student.update(student_params)
        if @student.save
            redirect_to student_path(@student), success: "Successfully Updated!"
            # flash[:notice] = "Successfully Updated"
        else
            redirect_to "/students/#{@student.id}/edit", danger: "Missing Fields, Please Try Again!"
        end

    end

    def destroy
        @student = current_student
        @student.courses.destroy
        # binding.pry
        @student.destroy
        # binding.pry
        session.clear
        redirect_to "/", success: "Your Account was Deleted Successfully!"
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :image, courses:[])
    end
end
