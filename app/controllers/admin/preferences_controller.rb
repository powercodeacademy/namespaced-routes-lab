module Admin
  class PreferencesController < ApplicationController
    def index
      @preference = Preference.first
    end
  end
end
