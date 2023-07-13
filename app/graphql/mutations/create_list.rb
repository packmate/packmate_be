class Mutations::CreateList < Mutations::BaseMutation
  argument :name, String, required: true
  argument :trip_type, String, required: true
  argument :items, [String], required: true

  field :list, Types::ListType, null: true
  field :errors, [String], null: false

  def resolve(name:, trip_type:, items:)
    list = List.new(name: name, trip_type: trip_type)

    if list.save
      items.each do |item|
        item = Item.find_or_create_by(name: item)
        ListItem.create(list_id: list.id, item_id: item.id)
      end

      {
        list: list,
        errors: []
      }
    else
      {
        list: nil,
        errors: list.errors.full_messages
      }
    end
  end
end
