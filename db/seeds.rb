# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'factory_girl'

c = FactoryGirl.create(:campaign)
FactoryGirl.create(:beer, campaign: c)
FactoryGirl.create(:cheer, title: "Thank you!", description: "We give you two crates", campaign: c, value_cents: 5000, value_currency: "EUR")
FactoryGirl.create(:cheer, title: "You love beer!", description: "We give you four crates and a tour", campaign: c, value_cents: 10000, value_currency: "EUR")
FactoryGirl.create(:cheer, title: "Beer master!", description: "We give you a crater per month for two years", campaign: c, value_cents: 20000, value_currency: "EUR")
