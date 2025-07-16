class AddStatusesToGame < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :status, :integer, default: 0
  end
end
