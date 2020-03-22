class AbilitiesController < ApplicationController
    def index
        abilities = Ability.all

        render json: abilities
    end

    def show
        ability = Ability.find(:id)

        render json: ability
    end


    private
    def ability_params
        params.require(:ability).permit(:name, :full_name, :description, :abil_check)
    end
end
