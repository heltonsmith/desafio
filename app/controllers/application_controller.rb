class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters 
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :rol])
        devise_parameter_sanitizer.permit(:update, keys: [:name, :rol])
    end
end
