class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :name
      t.references :car, index: true

      t.timestamps null: false
    end
    add_foreign_key :makes, :cars
  end
end
