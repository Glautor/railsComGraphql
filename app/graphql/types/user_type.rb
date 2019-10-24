module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: true
    field :items, [Types::ItemType], null: true
    field :name_with_age, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def name_with_age
      "#{object.name} possui #{object.age} anos"
    end
  end
end
