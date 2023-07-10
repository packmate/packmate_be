# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy_all
Tag.destroy_all


tag_1 = Tag.create!(category: "Camping")
tag_2 = Tag.create!(category: "Hiking")
tag_3 = Tag.create!(category: "Climbing")

item_1 = tag_1.items.create!(name: "Tent")
item_2 = tag_1.items.create!(name: "Sleeping Bag")
item_3 = tag_1.items.create!(name: "Firewood")

item_4 = tag_2.items.create!(name: "Hiking Boots")
item_5 = tag_2.items.create!(name: "Backpack")
item_6 = tag_2.items.create!(name: "Water Bottle")

item_7 = tag_3.items.create!(name: "Climbing Shoes")
item_8 = tag_3.items.create!(name: "Chalk Bag")
item_9 = tag_3.items.create!(name: "Harness")

item_10 = Item.create!(name: "Suncreen")
ItemTag.create!(item: item_10, tag: tag_1)
ItemTag.create!(item: item_10, tag: tag_2)
ItemTag.create!(item: item_10, tag: tag_3)
