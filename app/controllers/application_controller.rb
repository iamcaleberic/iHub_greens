class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :set_paper_trail_whodunnit
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
	    user_params.permit(:contact, :skills, :name, :email, :is_male,:password)
	  end
	  devise_parameter_sanitizer.permit(:account_update) do |user_params|
	    user_params.permit(:contact, :name ,:skills,:email,:is_male ,:password ,:current_password, :avatar )
	  end
	end
end
