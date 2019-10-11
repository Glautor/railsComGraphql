module Types
  class QueryType < Types::BaseObject
    field :items,
      [Types::ItemType],
      null: false,
      description: "Returns a list of items in the martian library"

    def items
      Item.all
    end

    field :users,
      [Types::UserType],
      null: true,
      description: "Return all Users"

    def users
      User.all
    end
  end
end
