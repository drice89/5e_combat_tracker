class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name, unique: true, null: false
      t.text :description, null: false
      t.text :ability_id, null: false
      t.timestamps
    end

    add_index :skills, :ability_id
  end
end
