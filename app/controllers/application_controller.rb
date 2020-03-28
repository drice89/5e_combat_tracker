class ApplicationController < ActionController::Base
    def current_user
        return nil if !session[:session_token]
        user = user.find_by(session_id: session[:session_id])
        user ? user : nil
    end

    def login_user!(user)
        session[:session_token] = user.session_token
    end

    def logout_user!
        session[:session_token] = nil
        current_user.reset_session_token!
        current_user = nil
    end

    def logged_in?
        !!current_user
    end

    def require_user
        redirect_to new_session_url unless logged_in?
    end

    def require_no_user
        redirect_to user_url(current_user.id) unless !logged_in?
    end

end
