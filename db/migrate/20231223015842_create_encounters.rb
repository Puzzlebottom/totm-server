class CreateEncounters < ActiveRecord::Migration[7.0]
  def change
    create_table :encounters do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :isActive
      t.integer :round
      t.integer :turn
      t.timestamps
    end
  end
end
