class AttendencesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update, :destroy]
  

    def index

    end
  

    def show
    end
  

    def new
      @attendence = Attendence.new
    end
  

    def edit
    end
  

    def create
      byebug
      @attendence = Attendence.new(attendence_params)
        if @attendence.save
          redirect_to attendences_path, notice: 'attendence was successfully created.' 
        else
          render :new 
        end
    end

    private
    def attendence_params
      params.require(:attendence).permit(:movie_id, :user_id)
    end

end
  
    