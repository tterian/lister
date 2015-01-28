class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.references :model, index: true
      t.references :user, index: true
      t.integer :year
      t.integer :mileage
      t.integer :price
      t.string :location
      t.string :picture
      t.integer :fuel
      t.integer :body
      t.integer :drive
      t.integer :hand
      t.integer :door
      t.string :engine
      t.integer :transmission
      t.string :color
      t.string :interior
      t.text :note

      t.timestamps null: false
    end
    add_foreign_key :cars, :users
    add_foreign_key :cars, :model

    add_index :cars, :user_id
  end
end
