module UsersQueryTypes
    field :users,
    [Types::UserType],
    null: true,
    description: "Return all Users"
  
    def users
    User.all
    end

    field :user, Types::UserType, null: true do
    description "Find a user by ID"
    argument :id, ID, required: true
    end

    def user(id:)
    User.find(id)
    end
end