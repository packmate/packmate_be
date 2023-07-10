module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :allItems, [Types::ItemType], null: false

    def allItems
      Item.all.distinct
    end

    field :items, [Types::ItemType], null: false do
      argument :category, String, required: true
    end

    def items(category:)
      Item.joins(:tags).where(tags: {category: category})
    end
  end
end
