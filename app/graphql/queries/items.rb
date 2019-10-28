module Queries
    class Items < Queries::BaseQuery
        description 'find all Items'

        type [Types::ItemType], null: true

        def resolve
            ::Item.all
        end
    end
end