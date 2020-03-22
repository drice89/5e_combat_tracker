class AddIndexToAbilities < ActiveRecord::Migration[5.2]
  def change
    add_index :abilities, :id, unique: true
  end
end
