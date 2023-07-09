class List < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :items, through: :list_items

  validates :name, presence: true
  validates :trip_type, presence: true
end
