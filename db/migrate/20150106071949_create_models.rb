class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.references :make, index: true

      t.timestamps null: false
    end
    add_foreign_key :models, :makes
  end
end
