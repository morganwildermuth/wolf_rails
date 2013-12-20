class AddedBooleanForReadyToPlayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ready_to_play, :boolean, default: false
  end
end
