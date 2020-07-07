class SessionsController < ApplicationController

    def new
        # byebug
    end



   
    def create
        def create
            @user = User.find_by(name: params[:name])
            if @user && @user.authenticate(params[:password])
               session[:user_id] = @user.id
               redirect_to welcome_path
            else
               redirect_to login_path
            end
         end
    end

    def destroy
        session.clear
        redirect_to homepage_path
    end

    def login

    end

    def welcome

    end
end