module Queries
    class Post < Queries::BaseQuery
        description 'Find post by ID'

        argument :id, ID, required: true

        type Types::PostType, null: true

        def resolve(id:)
            ::Post.find(id)
        end
    end
end