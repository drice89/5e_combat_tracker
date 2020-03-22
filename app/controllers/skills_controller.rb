class SkillsController < ApplicationController
    def index
        skills = Skill.all

        render json: skills
    end

    def show
        skill = Skill.find(:id)

        render json: skill
    end
end
