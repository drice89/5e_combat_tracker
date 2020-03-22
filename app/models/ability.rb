class Ability < ApplicationRecord
    validates :name, :full_name, uniqueness: true, presence: true

    has_many :skills,
        primary_key: :name,
        foreign_key: :ability_id,
        class_name: 'Skill'

end
