class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.datetime :data, null: false
      t.string :local, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
