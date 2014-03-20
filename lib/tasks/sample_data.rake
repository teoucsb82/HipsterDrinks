namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                 email: "example@hipsterdrinks.com",
                 password: "foobar")
    40.times do |n|
      email = "example-#{n+1}@hipsterdrinks.com"
      password  = "password"
      User.create!(
                   email: email,
                   password: password)
    end
    
    40.times do |n|
      User.first.drinks.create!(
                   name: "drink #{n + 1}",
                   description: "lorem son")
    end

  end
end