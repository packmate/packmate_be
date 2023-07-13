module Types
  class QueryType < Types::BaseObject


    field :items, [Types::ItemType], null: false do
      argument :category, String, required: true
    end

    def items(category:)
      Item.joins(:tags).where(tags: {category: category}).distinct
    end
  end
end
