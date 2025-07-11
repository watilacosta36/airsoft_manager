class CreateRegistrations < ActiveRecord::Migration[8.0]
  def change
    create_table :registrations do |t|
      t.string :name, null: false
      t.string :contact_number, null: false
      t.integer :status, null: false
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
