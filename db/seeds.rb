# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ability.destroy_all
Skill.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('abilities')
ApplicationRecord.connection.reset_pk_sequence!('skills')

ApplicationRecord.transaction do
	puts 'Loading abilities...'
    require_relative 'data/abilities.rb'
    puts 'Loading skills...'
	require_relative 'data/skills.rb'
	puts 'Done!'
end