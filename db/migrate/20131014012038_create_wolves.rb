class CreateWolves < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :health
      t.references :user, index: true

      t.timestamps
    end
  end
end
