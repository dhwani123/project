class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?

def index
  @cubestudents = Cubestudent.find_with_reputation(:votes, :all, order: 'votes desc')
end

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
end
end
