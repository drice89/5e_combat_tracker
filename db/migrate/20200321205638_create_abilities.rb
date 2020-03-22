class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name, null: false, unique: true
      t.string :full_name, null: false, unique: true
      t.text :description
      t.text :abil_check
      t.timestamps
    end
  end
end
