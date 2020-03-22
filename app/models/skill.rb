class Skill < ApplicationRecord
    validates :name, uniqueness: true, presence: true

    belongs_to :ability,
        primary_key: :name,
        foreign_key: :ability_id,
        class_name: 'Ability'
    
end
