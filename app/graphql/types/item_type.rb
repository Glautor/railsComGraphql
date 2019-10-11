module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :user, Types::UserType, null: false
  end
end
