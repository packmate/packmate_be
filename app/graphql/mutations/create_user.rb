class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    user = User.new(name: name)
    if user.save
      {
        user: user,
        errors: []
      }
    else
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end
end