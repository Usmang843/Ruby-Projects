class CreateCuisines < ActiveRecord::Migration[8.0]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.decimal :price
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps


    end
  end
end
