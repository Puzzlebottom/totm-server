class CreateEncounters < ActiveRecord::Migration[7.0]
  def change
    create_table :encounters do |t|
      t.string :name
      t.text :description
      t.boolean :isActive
      t.integer :round
      t.integer :turn
      t.integer :owner

      t.timestamps
    end
  end
end
