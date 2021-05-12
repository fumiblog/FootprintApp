class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :genre_id
      t.boolean :master

      t.timestamps
    end
  end
end
