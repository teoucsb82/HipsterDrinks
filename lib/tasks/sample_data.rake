namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                 email: "foobar",
                 password: "foobar")
    20.times do |n|
      email = "#{Faker::Name.name.to_s}-" + rand(100).to_s + "@hipsterdrinks.com"
      password  = "password"
      User.create!(
                   email: email,
                   password: password)
    end
  
    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Painkiller",
      description: "The Glass: Collins or tiki mug\nThe Ingredients:\r\n\r\n2 fl oz dark rum (Pusser’s is used on the island)\r\n2 fl oz pineapple juice\r\n1 fl oz orange juice\r\n1 fl oz coconut cream\r\nice cubes\r\norange slice\r\ncherry\r\nThe Instructions: Shake all the ingredients with ice and strain into a glass over lots of fresh ice. Garnish with an orange slice and a cherry.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/10#sthash.OxHmmbkD.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/mQGQItv9TDC6J6jO8Akr")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "The Historic Manhattan",
      description: "This one is taken from Harry Johnson’s New & Improved Bartender’s Manual, 1882. Harry even advises on the addition of absinthe: “It is for the customer to decide, whether to use absinthe or not. This is a very popular drink at the present day. It is the bartender’s duty to ask the customer whether he desires his drink dry or sweet.”\r\n\r\nThe Glass: Martini or Coupe\r\n\r\nThe Ingredients:\r\n\r\n1½ fl oz whiskey\r\n1½ fl oz vermouth\r\n1–2 dashes sugar syrup*\r\n1–2 dashes orange bitters\r\nsqueeze of lemon peel\r\nThe Instructions: “Stir up well; strain into a fancy cocktail glass; squeeze a piece of lemon peel on top, and serve.”\r\n\r\n*To make sugar syrup, bring 1 cup sugar and 17 fl oz water to a boil in a pan, stirring constantly, then simmer for around 5 minutes until the sugar is dissolved. Let cool completely, then store for up to a month in the refrigerator in a glass jar with a tight-fitting lid.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/1#sthash.1v5OQ3vR.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/hCkSZ30PQd206uR5nK2X")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Brandy Alexander",
      description: "Replacing the gin in an Alexander with the smoother, darker brandy sets this up as a decent dessert drink. Popularized during Prohibition, it features in WJ Tarling’s 1937 Café Royal Cocktail Book with one part brandy to half crème de cacao and cream, but it is more commonly served as below.\r\n\r\nThe Glass: Martini or Coupe\r\n\r\nThe Ingredients:\r\n\r\n1 fl oz cognac\r\n1 fl oz brown crème de cacao\r\n1 fl oz heavy cream\r\nice cubes\r\nfreshly grated nutmeg \r\nThe Instructions: Shake all the ingredients with ice and strain into a glass. Garnish with a sprinkling of freshly grated nutmeg and serve.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/2#sthash.1v5OQ3vR.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/NLI1RYCXSmCWASq50dVs")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Clyde Common Whiskey Sour",
      description: "The Glass: Sour or Rocks\r\n\r\n\t\r\nTop-Rated Olive Oil\r\n$26.18\r\nAmazon.com\r\nThe Ingredients:\r\n\r\n2 fl oz high-proof bourbon whiskey\r\n1 fl oz lemon juice\r\n3 tsp sugar syrup \r\n3 tsp egg white\r\ncracked ice\r\nlemon zest twist\r\nThe Instructions: Shake all the ingredients well with cracked ice, strain into a glass, and garnish with a lemon zest twist.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/3#sthash.uen46wuA.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/0WyDqqTzSgiQdL1DeKts")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Tom Collins",
      description: "London stakes a claim to this drink from the early 1800s, when it was allegedly served at the coffeehouse bar at the Limmer’s Hotel.\r\n\r\n\t\r\nTop-Rated Olive Oil\r\n$26.18 Amazon.com\r\nby Swoop\r\nThe Glass: Highball\r\n\r\nThe Ingredients:\r\n\r\n2 fl oz gin\r\n1 fl oz lemon juice\r\n4 tsp sugar syrup\r\nsparkling water to top\r\nice cubes\r\nslice of lemon\r\nThe Instructions: Shake the ingredients with ice and strain into a highball over fresh ice. Top with sparkling water and garnish with a slice of lemon.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/4#sthash.i9VtbwMD.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/yfKEWQKwThnmkEYtoqr6")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Martini",
      description: "Steer clear of limes for garnish, unless you’ve got a penchant for the things. Or scurvy. Instead go with an olive or a lemon zest twist. If you’re going dry, then enhance the savory side with a few olives on a toothpick.\r\n\r\n\t\r\nTop-Rated Olive Oil\r\n$26.18 Amazon.com\r\nby Swoop\r\nThe Glass: Martini\r\n\r\nThe Ingredients:\r\n\r\n2 fl oz gin\r\n3 tsp dry vermouth\r\nice cubes\r\nolive or lemon zest twist\r\nThe Instructions: Stir the ingredients in a mixing glass with ice and strain into a martini glass. Garnish with an olive or a lemon zest twist.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/5#sthash.5cwLxQnc.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/tuk6v48RCCqlK0Qduuv1")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Gin St. Clements",
      description: "The Glass: Highball or beer mug\r\n\r\nThe Ingredients:\r\n\r\n1¾ fl oz Beefeater London Dry gin\r\n1 fl oz orange juice\r\n1 fl oz lemon juice\r\n2 fl oz tonic water\r\nice cubes\r\nslice lemon\r\nslice orange\r\nThe Instructions: Pour all ingredients into a glass over ice and stir. Garnish with slices of lemon and orange.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/6#sthash.NbMHfW7r.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/e0pPs3qjSl2p4pnUGedD")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Bloody Mary",
      description: "The Ingredients:\r\n\r\nsalt and pepper to rim\r\n1¾ fl oz/ vodka\r\n2½ tsp lemon juice\r\n7 fl oz tomato juice\r\n4 dashes Tabasco\r\n8 dashes Worcestershire sauce\r\n1 tsp horseradish\r\npinch celery salt\r\nice cubes\r\ncelery stalk\r\nslice of lemon\r\nThe Instructions: Rim the edge of a glass with salt and pepper. Place the remaining ingredients in a shaker, tumble gently, and pour into a glass over ice. Garnish with a stalk of celery and slice of lemon.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/7#sthash.IARFvkfW.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/EpnEUzXLQAqHfW2yZYi3")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Mojito",
      description: "The Glass: Highball\r\n\r\nThe Ingredients:\r\n\r\nfresh mint leaves\r\n1 tsp sugar syrup\r\n2fl oz white rum\r\n4 tsp lime juice c\r\nrushed ice\r\nsoda water to top\r\nsprig of mint\r\nThe Instructions: Muddle the mint leaves and sugar syrup in a glass, add the rum and lime juice, and fill with crushed ice. Stir and top with soda water. Top with more ice if necessary and garnish with a sprig of mint.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/8#sthash.DdGkhlUK.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/NTM9BsUOTdS0ozKTM4li")

    User.find(rand(User.all.length) + 1).drinks.create!(
      name: "Dark n' Stormy",
      description: "This drink has the rare “distinction” of a trademark, as odd as that might sound.  Gosling's claim is that it was first made when sailors added their brand’s Black Seal rum to a mug of ginger beer.\r\n\r\n\t\r\nTop-Rated Olive Oil\r\n$26.18\r\nAmazon.com\r\nThe Glass: Highball\r\n\r\nThe Ingredients:\r\n\r\n2 fl oz Gosling’s Black Seal rum\r\nice cubes\r\nginger beer to top\r\nlemon wedge\r\nThe Instructions: Fill a glass with ice, add the rum, and top with ginger beer. Garnish with a lemon wedge.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/9#sthash.C2XDCtOG.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/adGAuF5QfK63vYdgu3Og")


    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "White Russian",
    #   description: "Dude's Favorite Drink")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Margarita",
    #   description: "Classic")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Tequila Sunrise",
    #   description: "I hate the fuckin eagles man")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Pina Colada",
    #   description: "And taking walks in the rain")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Pimm's Cup",
    #   description: "Let's go play some football, chap")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Blue Hawaiian",
    #   description: "Has something blue in it, probably")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Frozen Daiquiri",
    #   description: "Someone asked if I wanted a frozen daiquiri. I said no, but I want a regular daiquiri later...so...Yeah")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Frisco Sour",
    #   description: "Something with whiskey")

    # User.find(rand(User.all.length) + 1).drinks.create!(
    #   name: "Sex on The Beach",
    #   description: "Obviously")

    10.times do |drink|
      5.times do 
        r = rand(5) + 1
        if r == 1
          review = ["Terrible drink!", "BOGUS", "Grossinator", "Others bugger you!"].sample
        elsif r == 2
          review = ["Not so great drink", "Total bummer man", "This belongs at the red wedding"].sample
        elsif r == 3
          review = ["Average drink", "Got no problem with this", "OMG", "Hot pie you've done it again!"].sample
        elsif r == 4
          review = ["Pretty good drink", "Far out man", "OMGOMGOMG", "For Winterfell!"].sample
        else
          review = ["Best drink ever!", "Totally righteous!", "Super awesome amazeballs!", "Tyrion himself would approve"].sample
        end
        Drink.find(drink+1).comments.create(author_id: rand(User.all.length) + 1, rating: r, body: review)
      end
      Drink.average(drink)
    end

  end
end