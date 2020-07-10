class AttendencesController < ApplicationController
    before_action :set_attendence, only: [:show, :edit, :update, :destroy]
  

    def index
      @attendences = Attendence.all

    end
  
    def show
    end
    
    
    def edit
      
    end
    
    def update
      
    end
    
    def new
      @attendence = Attendence.new
    end

    def create
      @attendence = Attendence.new(attendence_params)
        if @attendence.save
          redirect_to user_path(session[:user_id]), notice: 'attendence was successfully created.' 
        else
          render :new 
        end
    end

    def destroy
      @attendence.destroy
        redirect_to user_path(current_user), notice: 'attendence was successfully destroyed.' 
    end

    private
    def set_attendence
      @attendence = Attendence.find(params[:id])
    end

    def attendence_params
      params.require(:attendence).permit(:movie_id, :user_id)
    end

end
  
    