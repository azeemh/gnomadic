class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(user)
		if resource.nil?
			root_path
		else
			stored_location_for(resource) || request.referrer || root_path
		end
	end

	protected

	def configure_permitted_parameters
	  attributes = [:name, :pronouns, :has_land, :acreage, :footage, :open_spaces, :land_description]
	  devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
	  devise_parameter_sanitizer.permit(:account_update, keys: attributes)
	end
	
end
