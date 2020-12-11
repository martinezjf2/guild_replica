class SessionsController < ApplicationController

    def new

    end

    def create
        @student = Student.find_by(username: params[:student][:username])
        if @student && @student.authenticate(params[:student][:password])
            session[:student_id] = @student.id
            redirect_to students_path
        else
            flash[:message] = "Sorry, Please Try Again"
            render :new
        end
    end

    def destroy
        session.delete :student_id
        redirect_to "/"

    end

    
end