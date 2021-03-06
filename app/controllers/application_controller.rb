class ApplicationController < ActionController::Base
  include Pundit 
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  	def after_sign_in_path_for(resource)
   		 user_path(current_user)
 	end

  protected
  
 	def configure_permitted_parameters
     	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    	devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  	end
end
