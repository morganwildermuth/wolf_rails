class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :season, default: 'Summer'
      t.integer :year, default: 0
      t.references :user
    end
  end
end
