class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :set_paper_trail_whodunnit
  before_action :configure_permitted_parameters, if: :devise_controller?
  def current_ability
    if green_signed_in?
      @current_ability ||= Ability.new(current_green)
    else
      @current_ability ||= Ability.new(current_admin)
    end
  end
  rescue_from CanCan::AccessDenied do |exception|
	 render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
  end
  protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
	    user_params.permit(:contact, :skills, :name, :email, :is_male,:password)
	  end
	  devise_parameter_sanitizer.permit(:account_update) do |user_params|
	    user_params.permit(:contact, :name ,:skills,:email,:is_male ,:password ,:current_password, :avatar, :web )
	  end
	end
end
