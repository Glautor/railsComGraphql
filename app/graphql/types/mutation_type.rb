module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_user, Types::UserType, null: true do
      description "Create a User"
      argument :name, String, required: true
      argument :age, Integer, required: true
    end

    def create_user(name:, age:)
      User.create(name: name, age: age)
    end
  end
end
