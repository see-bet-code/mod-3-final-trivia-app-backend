class ApplicationController < ActionController::API
    before_action :current_user

    def current_user
        @user = (User.find_by(id: session[:user_id]))
    end

    def logged_in?
        current_user.id != nil
    end

    def require_login
        render json: { status: "error", code: 401, message: current_user.errors.full_messages } unless logged_in?
    end
end
