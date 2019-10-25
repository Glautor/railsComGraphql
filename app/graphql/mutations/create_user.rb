module Mutations
    class CreateUser < BaseMutation
        argument :name, String, required: true
        argument :age, Integer, required: true

        type Types::UserType

        def resolve(name: nil, age: nil)
            User.create!(name: name, age: age)
        end
    end
end