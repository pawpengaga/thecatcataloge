class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_path_for(resource)
        articles_path
    end

    def authorize_request(kind = nil)
        unless kind.include?(current_client.role)
            redirect_to articles_path, notice: "No tienes permiso para hacer esto. Actualice su estado."
        end
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:photo, :name, :role]) #Me permito prescindir de la edad y el telefono
        devise_parameter_sanitizer.permit(:account_update, keys: [:photo, :name, :role]) #Me permito prescindir de la edad y el telefono
    end
end