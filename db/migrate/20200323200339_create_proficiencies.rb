class CreateProficiencies < ActiveRecord::Migration[5.2]
  def change
    create_table :proficiencies do |t|

      t.timestamps
    end
  end
end
