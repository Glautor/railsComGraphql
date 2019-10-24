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

    field :user, Types::UserType, null: true do
      description "Find a user by ID"
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :post, Types::PostType, null: true do
      description "Find a post by ID"
      argument :rating, Integer, required: true
    end

    def post(rating:)
      Post.where(rating: 5)
    end
  end
end
