class CreateWolves < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name
      t.integer :age, :default => 0
      t.string :gender
      t.integer :health, :default => 100
      t.references :user, index: true

      t.timestamps
    end
  end
end
