class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :name, index: true
      t.timestamps null: false
    end
    add_foreign_key :cars, :makes
  end
end
