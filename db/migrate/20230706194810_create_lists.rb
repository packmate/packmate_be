class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :type
      t.string :travelers
      t.string :destination
      t.date :date
      t.integer :duration
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
