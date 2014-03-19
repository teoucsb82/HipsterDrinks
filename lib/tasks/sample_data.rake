namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                 email: "example@hipsterdrinks.com",
                 password: "foobar")
    99.times do |n|
      email = "example-#{n+1}@hipsterdrinks.org"
      password  = "password"
      User.create!(
                   email: email,
                   password: password)
    end
  end
end