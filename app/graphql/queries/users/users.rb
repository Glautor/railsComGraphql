module Queries
    module Users
        class Users < Queries::BaseQuery
            description 'find all Users'

            type [Types::UserType], null: true

            def resolve
                ::User.all
            end
        end
    end
end