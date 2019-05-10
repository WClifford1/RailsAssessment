class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :set_cart

    before_action :configure_permitted_parameters, if: :devise_controller?

    def set_cart
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end


    def after_sign_in_path_for(user)
        listings_path
      end

      protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password)}
      end
      end
