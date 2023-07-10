# frozen_string_literal: true

module Types
  class ListType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :trip_type, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :items, [Types::ItemType], null: true

    def items
      object.items
    end
  end
end
