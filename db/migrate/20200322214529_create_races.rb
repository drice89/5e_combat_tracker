class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name, unique:true, null:false
      t.integer :speed, null:false
      t.text :alignment, null:false
      t.text :age, null:false
      t.string :size, null:false
      t.text :size_description, null:false
      t.timestamps
    end
    add_index :races, :name
  end
end
