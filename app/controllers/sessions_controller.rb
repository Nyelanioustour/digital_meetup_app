class SessionsController < ApplicationController

    def new
    end
   
    def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to welcome_path
        else
            flash[:notice] = "Username and password not found!"
            redirect_to login_path
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