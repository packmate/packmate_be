class Item < ApplicationRecord
  has_many :item_tags
  has_many :tags, through: :item_tags
  
  validates :name, presence: true
end
