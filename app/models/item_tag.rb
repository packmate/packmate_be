class ItemTag < ApplicationRecord
  belongs_to :items
  belongs_to :tags
end
