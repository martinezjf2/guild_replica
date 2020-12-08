class StudentsController < ApplicationController
    def home

    end

    def index

    end

    def new
        @student = Student.new
    end

    def create

    end

    def edit
    
    end

    def update

    end

    private

    def student_params
        # params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
    end
end
