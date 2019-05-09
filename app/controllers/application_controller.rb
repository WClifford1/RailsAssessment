class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include CurrentCart
    before_action :set_cart

    def after_sign_in_path_for(user)
        listings_path
      end
end
