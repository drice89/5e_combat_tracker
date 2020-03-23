class RacesController < ApplicationController
    #skip_before_action :verify_authenticity_token
    def index
        @races = Race.all
        render :index
    end

    def show
        @race = Race.find_by(id: params[:id])
        render :show
    end
    
    def new
        @race = Race.new
        render :new
    end

    def create
        @race = Race.new(race_params)
        if @race.save
            redirect_to race_url(@race)
        else
            render json: race.errors.full_messages
        end
    end

    def edit
        @race = Race.find_by(id: params[:id])
        render :edit

    end

    def update
        @race = Race.find_by(id: params[:id])
        
        if @race.update_attributes(race_params)
            redirect_to race_url(@race)
        else
            render :edit
        end
    end


    private
    def race_params
        params.require(:race).permit(:name, :speed, :alignment, :age, :size, :size_description)
    end
end
