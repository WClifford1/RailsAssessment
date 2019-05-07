class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include CurrentCart
    before_action :authenticate_user!
    before_action :set_cart
end
