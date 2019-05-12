class UsersController < ApplicationController

    def index
    end

    def show
        @user = User.find(params[:id])
    end

    private
    def user_params
        # params.required(:users).permit()
    end
end
