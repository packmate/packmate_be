class Item < ApplicationRecord
  has_many :item_tags, dependent: :destroy
  has_many :tags, through: :item_tags
  has_many :list_items, dependent: :destroy
  has_many :lists, through: :list_items
  
  validates :name, presence: true
end
