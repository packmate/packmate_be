class Tag < ApplicationRecord
  has_many :item_tags, dependent: :destroy
  has_many :items, through: :item_tags

  validates :category, presence: true
end
