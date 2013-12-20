class CreateRangeLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :food, default: 0
      t.integer :danger, default: 0
      t.references :game
    end
  end
end
