class AddIndexOnNameToAbilities < ActiveRecord::Migration[5.2]
  def change
    add_index :abilities, :name
  end
end
