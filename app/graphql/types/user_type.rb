# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :lists, [Types::ListType], null: true

    field :lists_count, Integer, null: true

    def lists
      object.lists
    end

    def lists_count
      object.lists.size
    end

  end
end

