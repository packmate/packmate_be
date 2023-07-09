class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: true

  field :user, Types::UserType
  field :errors, [String], null: false

  def resolve(name:)

    if name.blank?
      raise GraphQL::ExecutionError, "Name cannot be blank"
    end

    user = User.new(name: name)
    if user.save
      {
        user: user,
        errors: []
      }
    else
      {
        user: nil,
        errors: "Name must not be blank."
        
      }
    end
  end
end