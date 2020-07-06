class SessionsController < ApplicationController

    def new
        # byebug
    end



   
    def create
        def create
            @user = User.find_by(name: params[:name])
            if @user && @user.authenticate(params[:password])
               session[:user_id] = @user.id
               redirect_to '/welcome'
            else
               redirect_to '/login'
            end
         end
    end

    def destroy
        session.delete :username
    end

    def login

    end

    def welcome

    end
end