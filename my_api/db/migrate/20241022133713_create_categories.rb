class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :image

      t.timestamps
    end

    remove_column :product, :category, :string  # Specify the data type if necessary

    # Step 2: Add a new reference column
    add_reference :title, :category, foreign_key: true
  end
end
