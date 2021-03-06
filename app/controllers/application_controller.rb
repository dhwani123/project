class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  
  before_filter :configure_permitted_parameters, if: :devise_controller?




def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
end

def after_sign_in_path_for(cubeteacher)
	posts_path
end
def after_sign_in_path_for(cubestudent)
  posts_path
end
def after_sign_up_path_for(cubestudent)
	studentregs_new_path
end
end
