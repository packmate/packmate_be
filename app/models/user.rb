class User < ApplicationRecord
  has_many :lists, dependent: :destroy

  validates :name, presence: true
end
