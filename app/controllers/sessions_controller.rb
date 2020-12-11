class SessionsController < ApplicationController

    def new

    end

    def create
        @student = Student.find_by(username: params[:student][:username])
        if @student && @student.authenticate(params[:student][:password])
            session[:student_id] = @student.id
            redirect_to student_courses_path(@student)
            # When logging in i encounter that in order to login with enter, i have to refresh the page and then input the values
        else
            flash[:message] = "Sorry, Please Try Again"
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :student_id
        redirect_to "/"

    end

    
end