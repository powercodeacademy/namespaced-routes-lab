class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def new
    @preference = Preference.first

    if @preference.enabled
      current_user
    else
      redirect_to_preference_path
    end
  end
end
