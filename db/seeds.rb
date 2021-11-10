# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

apartments = [
    {
        street: '1245 Killer St.',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Lois',
        email: 'loisIsAnAlcoholic@drinkup.com',
        price: '1500',
        bedrooms: 2,
        bathrooms: 3,
        pets: 'no'

    },
    {
        street: '69 Perv Dr.',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Chester',
        email: 'chester@ladiesroom.com',
        price: '1000',
        bedrooms: 3,
        bathrooms: 3,
        pets: 'no'

    },
    {
        street: '123 Elm St.',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Freddy',
        email: 'freddy@urnightmares.com',
        price: '1800',
        bedrooms: 2,
        bathrooms: 2,
        pets: 'yes'
    },
    {
        street: '6666 OG St.',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Bobby Johnson',
        email: 'bobby@southcentral.com',
        price: '900',
        bedrooms: 2,
        bathrooms: 1,
        pets: 'yes'
    }
]

first_user = User.first

apartments.each do |attribute|
    first_user.apartments.create attribute
end