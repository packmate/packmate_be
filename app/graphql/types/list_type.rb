# frozen_string_literal: true

module Types
  class ListType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :trip_type, String
    field :travelers, String
    field :destination, String
    field :date, GraphQL::Types::ISO8601Date
    field :duration, Integer
    field :user_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
