class SessionsController < ApplicationController
    before_action :redirect_to_login, only: [:new]

    def new
        
    end

    def create
        @student = Student.find_by(username: params[:student][:username])
        if @student && @student.authenticate(params[:student][:password])
            session[:student_id] = @student.id
            redirect_to student_path(@student), success: "You are Successfully Logged In!"

        else
            redirect_to '/login', danger: "User not found. Please Try Again"

        end
    end

    def destroy
        session.delete :student_id
        redirect_to "/", success: "You've been logged out Successfully!"

    end

    
end