# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!

brlo = Brewery.create(
  name: "BRLO",
  location:  "Berlin",
  short_description: Forgery::LoremIpsum.sentence,
  untappd_id: "165817",
  rating: 3.46
)
schneeeule = Brewery.create(
  name: "Schneeeule",
  location:  "Berlin",
  short_description: Forgery::LoremIpsum.sentence,
  untappd_id: "165817",
  rating: 3.52
)
c1 = Campaign.create!(
  brewery: brlo,
  name: "Make Berliner Weisse great again",
  city: "Berlin",
  short_description: Forgery::LoremIpsum.sentence,
  long_description: Forgery::LoremIpsum.paragraph,
  deadline: 10.days.from_now,
  goal_cents: 100000,
  goal_currency: 'EUR',
)
c1.beers.create!(
  name: 'Goosebumps',
  description: "This beer is great, it's awesome, you'll love it",
  category: 'Imperial Berliner Weisse',
)

c2 = Campaign.create!(
  brewery: schneeeule,
  name: "Experimental Sour Stouts",
  city: "Berlin",
  short_description: Forgery::LoremIpsum.sentence,
  long_description: Forgery::LoremIpsum.paragraph,
  deadline: 15.days.from_now,
  goal_cents: 200000,
  goal_currency: 'EUR',
)
c2.beers.create!(
  name: "Fool's gold",
  description: "This beer is great, it's awesome, you'll love it",
  category: 'Stout',
)
c2.beers.create!(
  name: "Pyrite",
  description: "This beer is great, it's awesome, you'll love it even more",
  category: 'Stout',
)
[c1, c2].each do |campaign|
  campaign.cheers.create!(
    title: "Thank you!",
    description: "We give you two crates",
    value_cents: 5000,
    value_currency: "EUR"
  )
  campaign.cheers.create!(
    title: "You love beer",
    description: "We give you four crates and a tour",
    value_cents: 10000,
    value_currency: "EUR"
  )
  campaign.cheers.create!(
    title: "Beer master",
    description: "We give you two crates per month for four months",
    value_cents: 20000,
    value_currency: "EUR"
  )
end
