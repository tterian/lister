class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :name, index: true
      t.timestamps null: false
    end

  end
end
