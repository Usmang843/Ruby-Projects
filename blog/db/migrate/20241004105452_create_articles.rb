# Migrations are used to alter the structure of an application's database
class CreateArticles < ActiveRecord::Migration[7.2]

  def change #  two columns are defined: title and body
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps # two additional columns named created_at and updated_at
    end
  end
end
