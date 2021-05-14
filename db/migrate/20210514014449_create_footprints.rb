class CreateFootprints < ActiveRecord::Migration[6.1]
  def change
    create_table :footprints do |t|
      t.string :title
      t.integer :category_id
      t.string :note
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
