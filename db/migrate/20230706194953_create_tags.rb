class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :category, null: false

      t.timestamps
    end
  end
end
