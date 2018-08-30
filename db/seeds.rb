# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Item.destroy_all
Cart.destroy_all

i = 1

100.times do
  Item.create(title: Faker::Cat.breed,
              description: Faker::ChuckNorris.fact,
              price: Faker::Number.decimal(3, 2),
              image_url: ("https://loremflickr.com/640/427/cat?lock=#{i}"))
  i += 1
end

admin = User.create! :email => 'admin@admin', :password => 'admins', :password_confirmation => 'admins'
admin.update_attribute :admin, true
