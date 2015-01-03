class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.references :user, index: true
      t.string :make
      t.string :model
      t.datetime :year
      t.integer :mileage
      t.integer :price
      t.string :location
      t.string :picture
      t.string :fuel
      t.string :body_style
      t.string :drive_train
      t.string :hand_drive
      t.integer :door_count
      t.string :engine
      t.string :transmission
      t.string :color
      t.string :interior_color
      t.text :note

      t.timestamps null: false
    end
    add_foreign_key :cars, :users
    add_index :cars, [:user_id, :created_at]
  end
end
