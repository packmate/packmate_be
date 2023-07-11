# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ItemTag.destroy_all
List.destroy_all
Tag.destroy_all
Item.destroy_all


camping_tag = Tag.create!(category: 'Camping')
hiking_tag = Tag.create!(category: 'Hiking')
climbing_tag = Tag.create!(category: 'Climbing')
kayaking_tag = Tag.create!(category: 'Kayaking')
mtn_bike_tag = Tag.create!(category: 'Mountain Biking')
backpacking_tag = Tag.create!(category: 'Backpacking')
fishing_tag = Tag.create!(category: 'Fishing')

# CAMPING ITEMS
folding_table = camping_tag.items.create!(name: 'Folding Table')
flashlight = camping_tag.items.create!(name: 'Flashlight')
duct_tape = camping_tag.items.create!(name: 'Duct Tape')
air_mattress = camping_tag.items.create!(name: 'Air Mattress')
pillow = camping_tag.items.create!(name: 'Pillow')
blankets = camping_tag.items.create!(name: 'Blankets')
camp_stove = camping_tag.items.create!(name: 'Camp Stove')
firewood = camping_tag.items.create!(name: 'Firewood')
grill_grate = camping_tag.items.create!(name: 'Grill Grate')
water_bucket = camping_tag.items.create!(name: 'Water Bucket')
plates = camping_tag.items.create!(name: 'Plates')
cups = camping_tag.items.create!(name: 'Cups')
portable_coffee_maker = camping_tag.items.create!(name: 'Portable Coffee Maker')
campsite_games = camping_tag.items.create!(name: 'Campsite Games')
smores = camping_tag.items.create!(name: 'Smores')
prepared_meals = camping_tag.items.create!(name: 'Prepared Meals')

#CAMPING/BACKPACKING ITEMS
tent = Item.create!(name: 'Tent')
ItemTag.create!(item: tent, tag: camping_tag)
ItemTag.create!(item: tent, tag: backpacking_tag)

stakes = Item.create!(name: 'Stakes')
ItemTag.create!(item: stakes, tag: camping_tag)
ItemTag.create!(item: stakes, tag: backpacking_tag)

tent_repair_kit = Item.create!(name: 'Tent Repair Kit')
ItemTag.create!(item: tent_repair_kit, tag: camping_tag)
ItemTag.create!(item: tent_repair_kit, tag: backpacking_tag)

sleeping_bag = Item.create!(name: 'Sleeping Bag')
ItemTag.create!(item: sleeping_bag, tag: camping_tag)
ItemTag.create!(item: sleeping_bag, tag: backpacking_tag)

sleeping_pad = Item.create!(name: 'Sleeping Pad')
ItemTag.create!(item: sleeping_pad, tag: camping_tag)
ItemTag.create!(item: sleeping_pad, tag: backpacking_tag)

jet_boil = Item.create!(name: 'Jet Boil')
ItemTag.create!(item: jet_boil, tag: camping_tag)
ItemTag.create!(item: jet_boil, tag: backpacking_tag)

fuel = Item.create!(name: 'Fuel')
ItemTag.create!(item: fuel, tag: camping_tag)
ItemTag.create!(item: fuel, tag: backpacking_tag)

fire_starter = Item.create!(name: 'Fire Starter')
ItemTag.create!(item: fire_starter, tag: camping_tag)
ItemTag.create!(item: fire_starter, tag: backpacking_tag)

cooking_utensils = Item.create!(name: 'Cooking Utensils')
ItemTag.create!(item: cooking_utensils, tag: camping_tag)
ItemTag.create!(item: cooking_utensils, tag: backpacking_tag)

durable_mug = Item.create!(name: 'Durable Mug')
ItemTag.create!(item: durable_mug, tag: camping_tag)
ItemTag.create!(item: durable_mug, tag: backpacking_tag)

collapsible_bowls = Item.create!(name: 'Collapsible Bowls')
ItemTag.create!(item: collapsible_bowls, tag: camping_tag)
ItemTag.create!(item: collapsible_bowls, tag: backpacking_tag)

shovel = Item.create!(name: 'Shovel')
ItemTag.create!(item: shovel, tag: camping_tag)
ItemTag.create!(item: shovel, tag: backpacking_tag)

toiletries = Item.create!(name: 'Toiletries')
ItemTag.create!(item: toiletries, tag: camping_tag)
ItemTag.create!(item: toiletries, tag: backpacking_tag)

deck_of_cards = Item.create!(name: 'Deck of Cards')
ItemTag.create!(item: deck_of_cards, tag: camping_tag)
ItemTag.create!(item: deck_of_cards, tag: backpacking_tag)

paracord = Item.create!(name: 'Paracord')
ItemTag.create!(item: paracord, tag: camping_tag)
ItemTag.create!(item: paracord, tag: backpacking_tag)

camping_hammock = Item.create!(name: 'Camping Hammock')
ItemTag.create!(item: camping_hammock, tag: camping_tag)
ItemTag.create!(item: camping_hammock, tag: backpacking_tag)

thermal_underwear = Item.create!(name: 'Thermal Underwear')
ItemTag.create!(item: thermal_underwear, tag: camping_tag)
ItemTag.create!(item: thermal_underwear, tag: backpacking_tag)

carabiners = Item.create!(name: 'Carabiners')
ItemTag.create!(item: carabiners, tag: camping_tag)
ItemTag.create!(item: carabiners, tag: backpacking_tag)

trash_bag = Item.create!(name: 'Trash Bag')
ItemTag.create!(item: trash_bag, tag: camping_tag)
ItemTag.create!(item: trash_bag, tag: backpacking_tag)


# BACKPACKING ITEMS
bear_resistant_canister = backpacking_tag.items.create!(name: 'Bear Resistant Canister')
bear_spray = backpacking_tag.items.create!(name: 'Bear Spray')
dehydrated_meals = backpacking_tag.items.create!(name: 'Dehydrated Meals')
dried_foods = backpacking_tag.items.create!(name: 'Dried Foods')
satellite_communicator = backpacking_tag.items.create!(name: 'Satellite Communicator')
water_filtration_system = backpacking_tag.items.create!(name: 'Water Filtration System')


# FISHING ITEMS
fishing_license = fishing_tag.items.create!(name: 'Fishing License')
fishing_hooks = fishing_tag.items.create!(name: 'Fishing Hooks')
hook_remover = fishing_tag.items.create!(name: 'Hook Remover')
fishing_line = fishing_tag.items.create!(name: 'Fishing Line')
fishing_net = fishing_tag.items.create!(name: 'Fishing Net')
fishing_reel = fishing_tag.items.create!(name: 'Fishing Reel')
fishing_rod = fishing_tag.items.create!(name: 'Fishing Pole')
fishing_vest = fishing_tag.items.create!(name: 'Fishing Vest')
sinkers = fishing_tag.items.create!(name: 'Sinkers')
bobbers = fishing_tag.items.create!(name: 'Bobbers')
swivels = fishing_tag.items.create!(name: 'Swivels')
snaps = fishing_tag.items.create!(name: 'Snaps')
lures = fishing_tag.items.create!(name: 'Lures')
live_bait = fishing_tag.items.create!(name: 'Live Bait')
bait_alternatives = fishing_tag.items.create!(name: 'Bait Alternatives')
tackle_box = fishing_tag.items.create!(name: 'Tackle Box')
gaiters = fishing_tag.items.create!(name: 'Gaiters')
pliers = fishing_tag.items.create!(name: 'Pliers')


# CLIMBING ITEMS
climbing_shoes = climbing_tag.items.create!(name: 'Climbing Shoes')
approach_shoes = climbing_tag.items.create!(name: 'Approach Shoes')
chalk_bag = climbing_tag.items.create!(name: 'Chalk Bag')
chalk = climbing_tag.items.create!(name: 'Chalk')
harness = climbing_tag.items.create!(name: 'Harness')
belay_device = climbing_tag.items.create!(name: 'Belay Device')
locking_carabiner = climbing_tag.items.create!(name: 'Locking Carabiner')
non_locking_carabiner = climbing_tag.items.create!(name: 'Non-Locking Carabiner')
climbing_rope = climbing_tag.items.create!(name: 'Climbing Rope')
slings = climbing_tag.items.create!(name: 'Slings')
quickdraws = climbing_tag.items.create!(name: 'Quickdraws')
cams = climbing_tag.items.create!(name: 'Cams')
nuts = climbing_tag.items.create!(name: 'Nuts')
hexes = climbing_tag.items.create!(name: 'Hexes')
ascenders = climbing_tag.items.create!(name: 'Ascenders')
descenders = climbing_tag.items.create!(name: 'Descenders')
personal_anchor_system = climbing_tag.items.create!(name: 'Personal Anchor System')


# KAYAKING ITEMS
kayak = kayaking_tag.items.create!(name: 'Kayak')
paddle = kayaking_tag.items.create!(name: 'Paddle')
spray_skirt = kayaking_tag.items.create!(name: 'Spray Skirt')
bilge_pump = kayaking_tag.items.create!(name: 'Bilge Pump')
paddle_leash = kayaking_tag.items.create!(name: 'Paddle Leash')
kayak_repair_kit = kayaking_tag.items.create!(name: 'Kayak Repair Kit')
throw_rope = kayaking_tag.items.create!(name: 'Throw Rope')


# MOUNTAIN BIKING ITEMS
mountain_bike = mtn_bike_tag.items.create!(name: 'Mountain Bike')
bike_shoes = mtn_bike_tag.items.create!(name: 'Bike Shoes')
platform_pedals = mtn_bike_tag.items.create!(name: 'Platform Pedals')
clipless_pedals = mtn_bike_tag.items.create!(name: 'Clipless Pedals')
spare_tubes = mtn_bike_tag.items.create!(name: 'Spare Tubes')
tubeless_repair_kit = mtn_bike_tag.items.create!(name: 'Tubeless Repair Kit')
tire_pump = mtn_bike_tag.items.create!(name: 'Tire Pump')
tire_levers = mtn_bike_tag.items.create!(name: 'Tire Levers')
chain_tool = mtn_bike_tag.items.create!(name: 'Chain Tool')
spare_chain_links = mtn_bike_tag.items.create!(name: 'Spare Chain Links')
chain_lubricant = mtn_bike_tag.items.create!(name: 'Chain Lubricant')
suspension_pump = mtn_bike_tag.items.create!(name: 'Suspension Pump')
bike_lock = mtn_bike_tag.items.create!(name: 'Bike Lock')
bike_lights = mtn_bike_tag.items.create!(name: 'Bike Lights')
padded_cycling_shorts = mtn_bike_tag.items.create!(name: 'Padded Cycling Shorts')
cycling_socks = mtn_bike_tag.items.create!(name: 'Cycling Socks')
knee_pads = mtn_bike_tag.items.create!(name: 'Knee Pads')
elbow_pads = mtn_bike_tag.items.create!(name: 'Elbow Pads')
bike_bell = mtn_bike_tag.items.create!(name: 'Bike Bell')
reflective_gear = mtn_bike_tag.items.create!(name: 'Reflective Gear')
bike_repair_instructions = mtn_bike_tag.items.create!(name: 'Bike Repair Instructions')

# food/water
water = Item.create!(name: 'Water')
ItemTag.create!(item: water, tag: camping_tag)
ItemTag.create!(item: water, tag: hiking_tag)
ItemTag.create!(item: water, tag: fishing_tag)
ItemTag.create!(item: water, tag: climbing_tag)
ItemTag.create!(item: water, tag: kayaking_tag)
ItemTag.create!(item: water, tag: mtn_bike_tag)
ItemTag.create!(item: water, tag: backpacking_tag)

snacks = Item.create!(name: 'Snacks')
ItemTag.create!(item: snacks, tag: camping_tag)
ItemTag.create!(item: snacks, tag: hiking_tag)
ItemTag.create!(item: snacks, tag: fishing_tag)
ItemTag.create!(item: snacks, tag: climbing_tag)
ItemTag.create!(item: snacks, tag: kayaking_tag)
ItemTag.create!(item: snacks, tag: mtn_bike_tag)

energy_bars = Item.create!(name: 'Energy Bars')
ItemTag.create!(item: energy_bars, tag: camping_tag)
ItemTag.create!(item: energy_bars, tag: hiking_tag)
ItemTag.create!(item: energy_bars, tag: fishing_tag)
ItemTag.create!(item: energy_bars, tag: climbing_tag)
ItemTag.create!(item: energy_bars, tag: kayaking_tag)
ItemTag.create!(item: energy_bars, tag: mtn_bike_tag)
ItemTag.create!(item: energy_bars, tag: backpacking_tag)

# ALL TAGS ITEMS
sunscreen = Item.create!(name: 'Sunscreen')
ItemTag.create!(item: sunscreen, tag: camping_tag)
ItemTag.create!(item: sunscreen, tag: hiking_tag)
ItemTag.create!(item: sunscreen, tag: fishing_tag)
ItemTag.create!(item: sunscreen, tag: climbing_tag)
ItemTag.create!(item: sunscreen, tag: kayaking_tag)
ItemTag.create!(item: sunscreen, tag: mtn_bike_tag)
ItemTag.create!(item: sunscreen, tag: backpacking_tag)

lip_balm = Item.create!(name: 'Lip Balm')
ItemTag.create!(item: lip_balm, tag: camping_tag)
ItemTag.create!(item: lip_balm, tag: hiking_tag)
ItemTag.create!(item: lip_balm, tag: fishing_tag)
ItemTag.create!(item: lip_balm, tag: climbing_tag)
ItemTag.create!(item: lip_balm, tag: kayaking_tag)
ItemTag.create!(item: lip_balm, tag: mtn_bike_tag)
ItemTag.create!(item: lip_balm, tag: backpacking_tag)

waterproof_bag = Item.create!(name: 'Waterproof Bag')
ItemTag.create!(item: waterproof_bag, tag: camping_tag)
ItemTag.create!(item: waterproof_bag, tag: hiking_tag)
ItemTag.create!(item: waterproof_bag, tag: fishing_tag)
ItemTag.create!(item: waterproof_bag, tag: climbing_tag)
ItemTag.create!(item: waterproof_bag, tag: kayaking_tag)
ItemTag.create!(item: waterproof_bag, tag: mtn_bike_tag)
ItemTag.create!(item: waterproof_bag, tag: backpacking_tag)

gloves = Item.create!(name: 'Gloves')
ItemTag.create!(item: gloves, tag: camping_tag)
ItemTag.create!(item: gloves, tag: hiking_tag)
ItemTag.create!(item: gloves, tag: fishing_tag)
ItemTag.create!(item: gloves, tag: climbing_tag)
ItemTag.create!(item: gloves, tag: kayaking_tag)
ItemTag.create!(item: gloves, tag: mtn_bike_tag)
ItemTag.create!(item: gloves, tag: backpacking_tag)

towel = Item.create!(name: 'Towel')
ItemTag.create!(item: towel, tag: camping_tag)
ItemTag.create!(item: towel, tag: hiking_tag)
ItemTag.create!(item: towel, tag: fishing_tag)
ItemTag.create!(item: towel, tag: climbing_tag)
ItemTag.create!(item: towel, tag: kayaking_tag)
ItemTag.create!(item: towel, tag: mtn_bike_tag)
ItemTag.create!(item: towel, tag: backpacking_tag)

# Sport
helmet = Item.create!(name: 'Helmet')
ItemTag.create!(item: helmet, tag: climbing_tag)
ItemTag.create!(item: helmet, tag: kayaking_tag)
ItemTag.create!(item: helmet, tag: mtn_bike_tag)

# Aquatic
life_jacket = Item.create!(name: 'Life Jacket')
ItemTag.create!(item: life_jacket, tag: fishing_tag)
ItemTag.create!(item: life_jacket, tag: kayaking_tag)

water_shoes = Item.create!(name: 'Water Shoes')
ItemTag.create!(item: water_shoes, tag: camping_tag)
ItemTag.create!(item: water_shoes, tag: fishing_tag)
ItemTag.create!(item: water_shoes, tag: kayaking_tag)

sandals = Item.create!(name: 'Sandals')
ItemTag.create!(item: sandals, tag: camping_tag)
ItemTag.create!(item: sandals, tag: fishing_tag)
ItemTag.create!(item: sandals, tag: kayaking_tag)

swimwear = Item.create!(name: 'Swimwear')
ItemTag.create!(item: swimwear, tag: camping_tag)
ItemTag.create!(item: swimwear, tag: fishing_tag)
ItemTag.create!(item: swimwear, tag: kayaking_tag)
ItemTag.create!(item: swimwear, tag: backpacking_tag)

# outdoorsy ITEMS
cooler = Item.create!(name: 'Cooler')
ItemTag.create!(item: cooler, tag: camping_tag)
ItemTag.create!(item: cooler, tag: fishing_tag)

camp_chair = Item.create!(name: 'Camp Chair')
ItemTag.create!(item: camp_chair, tag: camping_tag)
ItemTag.create!(item: camp_chair, tag: fishing_tag)

cleaning_supplies = Item.create!(name: 'Cleaning Supplies')
ItemTag.create!(item: cleaning_supplies, tag: camping_tag)
ItemTag.create!(item: cleaning_supplies, tag: fishing_tag)
ItemTag.create!(item: cleaning_supplies, tag: backpacking_tag)

# Clothing
hiking_boots = Item.create!(name: 'Hiking Boots')
ItemTag.create!(item: hiking_boots, tag: camping_tag)
ItemTag.create!(item: hiking_boots, tag: hiking_tag)
ItemTag.create!(item: hiking_boots, tag: backpacking_tag)

weather_appropriate_clothing = Item.create!(name: 'Weather Appropriate Clothing')
ItemTag.create!(item: weather_appropriate_clothing, tag: camping_tag)
ItemTag.create!(item: weather_appropriate_clothing, tag: hiking_tag)
ItemTag.create!(item: weather_appropriate_clothing, tag: fishing_tag)
ItemTag.create!(item: weather_appropriate_clothing, tag: climbing_tag)
ItemTag.create!(item: weather_appropriate_clothing, tag: kayaking_tag)
ItemTag.create!(item: weather_appropriate_clothing, tag: mtn_bike_tag)
ItemTag.create!(item: weather_appropriate_clothing, tag: backpacking_tag)

extra_layers = Item.create!(name: 'Extra Layers')
ItemTag.create!(item: extra_layers, tag: camping_tag)
ItemTag.create!(item: extra_layers, tag: hiking_tag)
ItemTag.create!(item: extra_layers, tag: fishing_tag)
ItemTag.create!(item: extra_layers, tag: climbing_tag)
ItemTag.create!(item: extra_layers, tag: kayaking_tag)
ItemTag.create!(item: extra_layers, tag: mtn_bike_tag)

insulating_layers = Item.create!(name: 'Insulating Layers')
ItemTag.create!(item: insulating_layers, tag: camping_tag)
ItemTag.create!(item: insulating_layers, tag: hiking_tag)
ItemTag.create!(item: insulating_layers, tag: fishing_tag)
ItemTag.create!(item: insulating_layers, tag: climbing_tag)
ItemTag.create!(item: insulating_layers, tag: kayaking_tag)
ItemTag.create!(item: insulating_layers, tag: mtn_bike_tag)
ItemTag.create!(item: insulating_layers, tag: backpacking_tag)

quick_dry_clothing = Item.create!(name: 'Quick Dry Clothing')
ItemTag.create!(item: quick_dry_clothing, tag: camping_tag)
ItemTag.create!(item: quick_dry_clothing, tag: hiking_tag)
ItemTag.create!(item: quick_dry_clothing, tag: fishing_tag)
ItemTag.create!(item: quick_dry_clothing, tag: climbing_tag)
ItemTag.create!(item: quick_dry_clothing, tag: kayaking_tag)
ItemTag.create!(item: quick_dry_clothing, tag: mtn_bike_tag)
ItemTag.create!(item: quick_dry_clothing, tag: backpacking_tag)


rain_gear = Item.create!(name: 'Rain Gear')
ItemTag.create!(item: rain_gear, tag: camping_tag)
ItemTag.create!(item: rain_gear, tag: hiking_tag)
ItemTag.create!(item: rain_gear, tag: fishing_tag)
ItemTag.create!(item: rain_gear, tag: climbing_tag)
ItemTag.create!(item: rain_gear, tag: kayaking_tag)
ItemTag.create!(item: rain_gear, tag: mtn_bike_tag)
ItemTag.create!(item: rain_gear, tag: backpacking_tag)

hat = Item.create!(name: 'Hat')
ItemTag.create!(item: hat, tag: camping_tag)
ItemTag.create!(item: hat, tag: hiking_tag)
ItemTag.create!(item: hat, tag: fishing_tag)
ItemTag.create!(item: hat, tag: climbing_tag)
ItemTag.create!(item: hat, tag: kayaking_tag)
ItemTag.create!(item: hat, tag: mtn_bike_tag)
ItemTag.create!(item: hat, tag: backpacking_tag)

sunglasses = Item.create!(name: 'Sunglasses')
ItemTag.create!(item: sunglasses, tag: camping_tag)
ItemTag.create!(item: sunglasses, tag: hiking_tag)
ItemTag.create!(item: sunglasses, tag: fishing_tag)
ItemTag.create!(item: sunglasses, tag: climbing_tag)
ItemTag.create!(item: sunglasses, tag: kayaking_tag)
ItemTag.create!(item: sunglasses, tag: mtn_bike_tag)
ItemTag.create!(item: sunglasses, tag: backpacking_tag)

#misc
backpack = Item.create!(name: 'Backpack')
ItemTag.create!(item: backpack, tag: camping_tag)
ItemTag.create!(item: backpack, tag: hiking_tag)
ItemTag.create!(item: backpack, tag: mtn_bike_tag)
ItemTag.create!(item: backpack, tag: backpacking_tag)

water_bottle = Item.create!(name: 'Water Bottle')
ItemTag.create!(item: water_bottle, tag: camping_tag)
ItemTag.create!(item: water_bottle, tag: hiking_tag)
ItemTag.create!(item: water_bottle, tag: fishing_tag)
ItemTag.create!(item: water_bottle, tag: climbing_tag)
ItemTag.create!(item: water_bottle, tag: kayaking_tag)
ItemTag.create!(item: water_bottle, tag: mtn_bike_tag)
ItemTag.create!(item: water_bottle, tag: backpacking_tag)

trekking_poles = Item.create!(name: 'Trekking Poles')
insect_repellent = Item.create!(name: 'Insect Repellent')
camera = Item.create!(name: 'Camera')
cash = Item.create!(name: 'Cash')
credit_cards = Item.create!(name: 'Credit Cards')

personal_identification = Item.create!(name: 'Personal Identification')
portable_phone_charger = Item.create!(name: 'Portable Phone Charger')
phone = Item.create!(name: 'Phone')
binoculars = Item.create!(name: 'Binoculars')


# safety
first_aid_kit = Item.create!(name: 'First Aid Kit')
ItemTag.create!(item: first_aid_kit, tag: camping_tag)
ItemTag.create!(item: first_aid_kit, tag: hiking_tag)
ItemTag.create!(item: first_aid_kit, tag: fishing_tag)
ItemTag.create!(item: first_aid_kit, tag: climbing_tag)
ItemTag.create!(item: first_aid_kit, tag: kayaking_tag)
ItemTag.create!(item: first_aid_kit, tag: mtn_bike_tag)
ItemTag.create!(item: first_aid_kit, tag: backpacking_tag)

map = Item.create!(name: 'Map')
ItemTag.create!(item: map, tag: camping_tag)
ItemTag.create!(item: map, tag: hiking_tag)
ItemTag.create!(item: map, tag: fishing_tag)
ItemTag.create!(item: map, tag: climbing_tag)
ItemTag.create!(item: map, tag: kayaking_tag)
ItemTag.create!(item: map, tag: mtn_bike_tag)
ItemTag.create!(item: map, tag: backpacking_tag)

personal_locator_beacon = Item.create!(name: 'Personal Locator Beacon')
ItemTag.create!(item: personal_locator_beacon, tag: climbing_tag)
ItemTag.create!(item: personal_locator_beacon, tag: kayaking_tag)
ItemTag.create!(item: personal_locator_beacon, tag: mtn_bike_tag)
ItemTag.create!(item: personal_locator_beacon, tag: backpacking_tag)

compass = Item.create!(name: 'Compass')

gps_device = Item.create!(name: 'GPS Device')
ItemTag.create!(item: gps_device, tag: camping_tag)
ItemTag.create!(item: gps_device, tag: hiking_tag)
ItemTag.create!(item: gps_device, tag: fishing_tag)
ItemTag.create!(item: gps_device, tag: climbing_tag)
ItemTag.create!(item: gps_device, tag: kayaking_tag)
ItemTag.create!(item: gps_device, tag: mtn_bike_tag)
ItemTag.create!(item: gps_device, tag: backpacking_tag)

medications = Item.create!(name: 'Medications')
ItemTag.create!(item: medications, tag: camping_tag)
ItemTag.create!(item: medications, tag: hiking_tag)
ItemTag.create!(item: medications, tag: fishing_tag)
ItemTag.create!(item: medications, tag: climbing_tag)
ItemTag.create!(item: medications, tag: kayaking_tag)
ItemTag.create!(item: medications, tag: mtn_bike_tag)
ItemTag.create!(item: medications, tag: backpacking_tag)

multi_tool = Item.create!(name: 'Multi-Tool')
ItemTag.create!(item: multi_tool, tag: camping_tag)
ItemTag.create!(item: multi_tool, tag: hiking_tag)
ItemTag.create!(item: multi_tool, tag: fishing_tag)
ItemTag.create!(item: multi_tool, tag: climbing_tag)
ItemTag.create!(item: multi_tool, tag: kayaking_tag)
ItemTag.create!(item: multi_tool, tag: mtn_bike_tag)
ItemTag.create!(item: multi_tool, tag: backpacking_tag)

knife = Item.create!(name: 'Knife')
ItemTag.create!(item: knife, tag: camping_tag)
ItemTag.create!(item: knife, tag: hiking_tag)
ItemTag.create!(item: knife, tag: fishing_tag)
ItemTag.create!(item: knife, tag: climbing_tag)
ItemTag.create!(item: knife, tag: kayaking_tag)
ItemTag.create!(item: knife, tag: mtn_bike_tag)
ItemTag.create!(item: knife, tag: backpacking_tag)

whistle = Item.create!(name: 'Whistle')
ItemTag.create!(item: whistle, tag: camping_tag)
ItemTag.create!(item: whistle, tag: hiking_tag)
ItemTag.create!(item: whistle, tag: fishing_tag)
ItemTag.create!(item: whistle, tag: climbing_tag)
ItemTag.create!(item: whistle, tag: kayaking_tag)
ItemTag.create!(item: whistle, tag: mtn_bike_tag)
ItemTag.create!(item: whistle, tag: backpacking_tag)

route_description = Item.create!(name: 'Route Description')
ItemTag.create!(item: route_description, tag: camping_tag)
ItemTag.create!(item: route_description, tag: hiking_tag)
ItemTag.create!(item: route_description, tag: fishing_tag)
ItemTag.create!(item: route_description, tag: climbing_tag)
ItemTag.create!(item: route_description, tag: kayaking_tag)
ItemTag.create!(item: route_description, tag: mtn_bike_tag)
ItemTag.create!(item: route_description, tag: backpacking_tag)

guide_book = Item.create!(name: 'Guide Book')
ItemTag.create!(item: guide_book, tag: camping_tag)
ItemTag.create!(item: guide_book, tag: hiking_tag)
ItemTag.create!(item: guide_book, tag: fishing_tag)
ItemTag.create!(item: guide_book, tag: climbing_tag)
ItemTag.create!(item: guide_book, tag: kayaking_tag)
ItemTag.create!(item: guide_book, tag: mtn_bike_tag)
ItemTag.create!(item: guide_book, tag: backpacking_tag)

permits = Item.create!(name: 'Permits')
ItemTag.create!(item: permits, tag: fishing_tag)
ItemTag.create!(item: permits, tag: climbing_tag)
ItemTag.create!(item: permits, tag: kayaking_tag)
ItemTag.create!(item: permits, tag: mtn_bike_tag)
ItemTag.create!(item: permits, tag: backpacking_tag)

batteries = Item.create!(name: 'Batteries')
ItemTag.create!(item: batteries, tag: camping_tag)
ItemTag.create!(item: batteries, tag: hiking_tag)
ItemTag.create!(item: batteries, tag: fishing_tag)
ItemTag.create!(item: batteries, tag: climbing_tag)
ItemTag.create!(item: batteries, tag: kayaking_tag)
ItemTag.create!(item: batteries, tag: mtn_bike_tag)
ItemTag.create!(item: batteries, tag: backpacking_tag)

headlamp = Item.create!(name: 'Headlamp')
ItemTag.create!(item: headlamp, tag: camping_tag)
ItemTag.create!(item: headlamp, tag: hiking_tag)
ItemTag.create!(item: headlamp, tag: fishing_tag)
ItemTag.create!(item: headlamp, tag: climbing_tag)
ItemTag.create!(item: headlamp, tag: kayaking_tag)
ItemTag.create!(item: headlamp, tag: mtn_bike_tag)
ItemTag.create!(item: headlamp, tag: backpacking_tag)
