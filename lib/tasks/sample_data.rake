namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                 email: "foobar",
                 password: "foobar")
    User.create!(
                 email: "guest",
                 password: "password")
    10.times do |n|
      email = "example-#{n+1}@hipsterdrinks.com"
      password  = "password"
      User.create!(
                   email: email,
                   password: password)
    end
    
    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "White Russian",
      description: "Dude's Favorite Drink")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Margarita",
      description: "Goin to relax old' South American way, eh Michael?")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Tequila Sunrise",
      description: "I hate the fuckin eagles man")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Pina Colada",
      description: "And taking walks in the rain")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Pimm's Cup",
      description: "Let's go play some football, chap")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Blue Hawaiian",
      description: "Has something blue in it, probably")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Frozen Daiquiri",
      description: "Someone asked if I wanted a frozen daiquiri. I said no, but I want a regular daiquiri later...so...Yeah")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Frisco Sour",
      description: "Something with whiskey")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Sex on The Beach",
      description: "Obvi")

  end
end