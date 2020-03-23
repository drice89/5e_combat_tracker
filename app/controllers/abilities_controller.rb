class AbilitiesController < ApplicationController
    def index
        @abilities = Ability.all

        render :index
    end

    def show
        #debugger
        @ability = Ability.find(params[:id])

        if @ability
            render :show
        else
            redirect_to abilities_url
        end
    end


    private
    def ability_params
        params.require(:ability).permit(:name, :full_name, :description, :abil_check)
    end
end
