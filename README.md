# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  Ruby ruby 2.5.1p57
  Rails 5.2.4.2

* System dependencies

* Configuration

* Database creation
  DBs in postgresql:
    Abilities
    Skills (ability_id)
    Races
  NOT YET CREATED
    Ability_bonuses - Joins table - (ability_id, race_id, bonus)
    Subraces (race_id)
    Languages
    Available_languages(race_id, language_id)
    Proficiencies
    Available_starting_proficiencies - joins table (race_id, proficiency_id)
    Traits
    Starting_traits - joins table (race_id, trait_id)


* Database initialization
  rails db:seed

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  rails db:seed
  rails s
  running on localhost:3000

* ...
