class ApplicationController < ActionController::Base

  # to show flash with js
  after_action :prepare_unobtrusive_flash

  include SessionsHelper

  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        redirect_to login_url, notice: "Please log in."
      end
    end

end
