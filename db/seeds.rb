# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add Users
glauton = User.create!(
    name: 'Glauton',
    age: 21
)
natasha = User.create!(
    name: 'Natasha',
    age: 20
)
juan = User.create!(
    name: 'Juan',
    age: 17
)

Item.create!(
    [
        {
            title: "Teste 1",
            user: glauton
        },
        {
            title: "Teste 2",
            user: glauton
        },
        {
            title: "Teste 3",
            user: glauton
        },
        {
            title: "Teste 4",
            user: natasha
        },
        {
            title: "Teste 5",
            user: juan
        },
        {
            title: "Teste 6",
            user: juan
        }
    ]
)