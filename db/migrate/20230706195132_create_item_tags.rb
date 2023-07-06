class CreateItemTags < ActiveRecord::Migration[5.2]
  def change
    create_table :item_tags do |t|
      t.references :item, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
