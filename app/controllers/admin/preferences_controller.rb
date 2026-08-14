module Admin
  class PreferencesController < ApplicationController
    before_action :ensure_admin_user!, except: [:index]

    def index
      @preferences = Preference.first_or_create
    end

    def update
      @preference = Preference.first_or_create

      if @preference.update(preference_params)
        redirect_to admin_preferences_path, notice: 'Preferences updated.'
      else
        render :index
      end
    end

    private

    def ensure_admin_user!
      return if current_user&.respond_to?(:admin?) && current_user.admin?

      head :forbidden
    end
  end
end
