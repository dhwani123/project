class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
   
  before_filter do 
  	if current_cubestudent!=nil
  		authenticate_cubestudent!
  	else
  		authenticate_cubeteacher!
  	end
  end
  before_filter :configure_permitted_parameters, if: :devise_controller?



def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
end

def after_sign_in_path_for(resource)
	posts_path
end
end
