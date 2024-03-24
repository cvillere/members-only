require "application_responder"

# after_action :update_user_online, if: :user_signed_in?

class ApplicationController < ActionController::Base

  after_action :update_user_online, if: :user_signed_in?

  self.responder = ApplicationResponder
  respond_to :html

  private

  def update_user_online
    current_user.try :touch
  end

end
