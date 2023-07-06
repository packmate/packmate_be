class ListItem < ApplicationRecord
  belongs_to :lists
  belongs_to :items
end
