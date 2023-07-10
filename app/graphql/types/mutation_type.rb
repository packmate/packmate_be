module Types
  class MutationType < Types::BaseObject
    field :create_list, mutation: Mutations::CreateList
  end
end
