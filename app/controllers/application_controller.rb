class ApplicationController < ActionController::Base

    helper_method :current_student

    def current_student
        Student.find_by(id: session[:student_id])
    end

    def require_login
        if current_student
            current_student
        else
            redirect_to '/'
        end
    end

    def redirect_to_login
        if current_student
          redirect_to '/login'
        end
      end

end
