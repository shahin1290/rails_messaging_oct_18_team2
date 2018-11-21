class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :mailbox, :conversation

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
  end
end

# Parameters: {"utf8"=>"✓", "authenticity_token"=>"uYYOloh9QjtWlZesefTM2LgA1agcsryV03wKOKbWeGvTeKxiLo/M7TpLwn5czsQPsFoRmeeVhcj+P9Pudn4I8g==", "user"=>{"name"=>"ssssssss", "email"=>"ssss@ddasd", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Create"}

