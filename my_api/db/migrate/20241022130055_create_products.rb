class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :image
      t.string :desc
      t.integer :price

      t.timestamps
    end
  end
end
