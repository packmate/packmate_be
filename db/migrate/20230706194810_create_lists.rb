class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :trip_type
      t.string :travelers
      t.string :destination
      t.date :date
      t.integer :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
