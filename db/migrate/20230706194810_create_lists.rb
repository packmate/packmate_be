class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.string :trip_type, null: false
      t.string :travelers
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
