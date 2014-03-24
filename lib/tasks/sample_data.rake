namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                 email: "foobar",
                 password: "foobar")
    10.times do |n|
      email = "#{Faker::Name.name.to_s}-" + rand(100).to_s + "@hipsterdrinks.com"
      password  = "password"
      User.create!(
                   email: email,
                   password: password)
    end
  
    User.first.drinks.create!(
      name: "Painkiller",
      description: "Max Payne would love this one. The Glass: Collins or tiki mug\nThe Ingredients:\r\n\r\n2 fl oz dark rum (Pusser’s is used on the island)\r\n2 fl oz pineapple juice\r\n1 fl oz orange juice\r\n1 fl oz coconut cream\r\nice cubes\r\norange slice\r\ncherry\r\nThe Instructions: Shake all the ingredients with ice and strain into a glass over lots of fresh ice. Garnish with an orange slice and a cherry.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/10#sthash.OxHmmbkD.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/mQGQItv9TDC6J6jO8Akr")

    User.first.drinks.create!(
      name: "The Historic Manhattan",
      description: "This one is taken from Harry Johnson’s New & Improved Bartender’s Manual, 1882. Harry even advises on the addition of absinthe: “It is for the customer to decide, whether to use absinthe or not. This is a very popular drink at the present day. It is the bartender’s duty to ask the customer whether he desires his drink dry or sweet.”\r\n\r\nThe Glass: Martini or Coupe\r\n\r\nThe Ingredients:\r\n\r\n1½ fl oz whiskey\r\n1½ fl oz vermouth\r\n1–2 dashes sugar syrup*\r\n1–2 dashes orange bitters\r\nsqueeze of lemon peel\r\nThe Instructions: “Stir up well; strain into a fancy cocktail glass; squeeze a piece of lemon peel on top, and serve.”\r\n\r\n*To make sugar syrup, bring 1 cup sugar and 17 fl oz water to a boil in a pan, stirring constantly, then simmer for around 5 minutes until the sugar is dissolved. Let cool completely, then store for up to a month in the refrigerator in a glass jar with a tight-fitting lid.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/1#sthash.1v5OQ3vR.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/hCkSZ30PQd206uR5nK2X")

    User.first.drinks.create!(
      name: "Brandy Alexander",
      description: "Replacing the gin in an Alexander with the smoother, darker brandy sets this up as a decent dessert drink. Popularized during Prohibition, it features in WJ Tarling’s 1937 Café Royal Cocktail Book with one part brandy to half crème de cacao and cream, but it is more commonly served as below.\r\n\r\nThe Glass: Martini or Coupe\r\n\r\nThe Ingredients:\r\n\r\n1 fl oz cognac\r\n1 fl oz brown crème de cacao\r\n1 fl oz heavy cream\r\nice cubes\r\nfreshly grated nutmeg \r\nThe Instructions: Shake all the ingredients with ice and strain into a glass. Garnish with a sprinkling of freshly grated nutmeg and serve.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/2#sthash.1v5OQ3vR.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/NLI1RYCXSmCWASq50dVs")

    User.first.drinks.create!(
      name: "Clyde Common Whiskey Sour",
      description: "Your not-that-common whiskey drink. The Glass: Sour or Rocks\r\n\r\n\t\r\nThe Ingredients:\r\n\r\n2 fl oz high-proof bourbon whiskey\r\n1 fl oz lemon juice\r\n3 tsp sugar syrup \r\n3 tsp egg white\r\ncracked ice\r\nlemon zest twist\r\nThe Instructions: Shake all the ingredients well with cracked ice, strain into a glass, and garnish with a lemon zest twist.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/3#sthash.uen46wuA.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/0WyDqqTzSgiQdL1DeKts")

    User.first.drinks.create!(
      name: "Tom Collins",
      description: "London stakes a claim to this drink from the early 1800s, when it was allegedly served at the coffeehouse bar at the Limmer’s Hotel.\r\n\r\n\t\r\nThe Glass: Highball\r\n\r\nThe Ingredients:\r\n\r\n2 fl oz gin\r\n1 fl oz lemon juice\r\n4 tsp sugar syrup\r\nsparkling water to top\r\nice cubes\r\nslice of lemon\r\nThe Instructions: Shake the ingredients with ice and strain into a highball over fresh ice. Top with sparkling water and garnish with a slice of lemon.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/4#sthash.i9VtbwMD.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/yfKEWQKwThnmkEYtoqr6")

    User.first.drinks.create!(
      name: "Martini",
      description: "Steer clear of limes for garnish, unless you’ve got a penchant for the things. Or scurvy. Instead go with an olive or a lemon zest twist. If you’re going dry, then enhance the savory side with a few olives on a toothpick.\r\n\r\n\t\r\nTop-Rated Olive Oil\r\n$26.18 Amazon.com\r\nby Swoop\r\nThe Glass: Martini\r\n\r\nThe Ingredients:\r\n\r\n2 fl oz gin\r\n3 tsp dry vermouth\r\nice cubes\r\nolive or lemon zest twist\r\nThe Instructions: Stir the ingredients in a mixing glass with ice and strain into a martini glass. Garnish with an olive or a lemon zest twist.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/5#sthash.5cwLxQnc.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/tuk6v48RCCqlK0Qduuv1")

    User.first.drinks.create!(
      name: "Gin St. Clements",
      description: "Something about a saint. The Glass: Highball or beer mug\r\n\r\nThe Ingredients:\r\n\r\n1¾ fl oz Beefeater London Dry gin\r\n1 fl oz orange juice\r\n1 fl oz lemon juice\r\n2 fl oz tonic water\r\nice cubes\r\nslice lemon\r\nslice orange\r\nThe Instructions: Pour all ingredients into a glass over ice and stir. Garnish with slices of lemon and orange.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/6#sthash.NbMHfW7r.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/e0pPs3qjSl2p4pnUGedD")

    User.first.drinks.create!(
      name: "Bloody Mary",
      description: "The best part of waking up. The Ingredients:\r\n\r\nsalt and pepper to rim\r\n1¾ fl oz/ vodka\r\n2½ tsp lemon juice\r\n7 fl oz tomato juice\r\n4 dashes Tabasco\r\n8 dashes Worcestershire sauce\r\n1 tsp horseradish\r\npinch celery salt\r\nice cubes\r\ncelery stalk\r\nslice of lemon\r\nThe Instructions: Rim the edge of a glass with salt and pepper. Place the remaining ingredients in a shaker, tumble gently, and pour into a glass over ice. Garnish with a stalk of celery and slice of lemon.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/7#sthash.IARFvkfW.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/EpnEUzXLQAqHfW2yZYi3")

    User.first.drinks.create!(
      name: "Mojito",
      description: "Mo-ji-to. The Glass: Highball\r\n\r\nThe Ingredients:\r\n\r\nfresh mint leaves\r\n1 tsp sugar syrup\r\n2fl oz white rum\r\n4 tsp lime juice c\r\nrushed ice\r\nsoda water to top\r\nsprig of mint\r\nThe Instructions: Muddle the mint leaves and sugar syrup in a glass, add the rum and lime juice, and fill with crushed ice. Stir and top with soda water. Top with more ice if necessary and garnish with a sprig of mint.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/8#sthash.DdGkhlUK.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/NTM9BsUOTdS0ozKTM4li")

    User.first.drinks.create!(
      name: "Dark n' Stormy",
      description: "This drink has the rare “distinction” of a trademark, as odd as that might sound.  Gosling's claim is that it was first made when sailors added their brand’s Black Seal rum to a mug of ginger beer.\r\n\r\n\t\r\nTop-Rated Olive Oil\r\n$26.18\r\nAmazon.com\r\nThe Glass: Highball\r\n\r\nThe Ingredients:\r\n\r\n2 fl oz Gosling’s Black Seal rum\r\nice cubes\r\nginger beer to top\r\nlemon wedge\r\nThe Instructions: Fill a glass with ice, add the rum, and top with ginger beer. Garnish with a lemon wedge.\r\n\r\n- See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/9#sthash.C2XDCtOG.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/adGAuF5QfK63vYdgu3Og")

    User.first.drinks.create!(
      name: "Mint Julep",
      description: "The Glass: Julep or highball The Ingredients: 1 sprig of mint 2 fl oz bourbon whiskey 3 tsp sugar syrup ice cubes crushed ice 2 sprigs of mint The Instructions: Muddle the sprig of mint in a mixing glass with the bourbon and sugar syrup. Add ice and shake. Strain into a glass or cup over crushed ice, stir, and top with more crushed ice. Garnish with 2 sprigs of mint. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/12#sthash.rW8HUACg.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/AKDJSxIJRddaYMsJIyTQ")

    User.first.drinks.create!(
      name: "Sazerac",
      description: "Classic New Orleans Cocktail. Sazerac is the king of all the cocktails. It might be one to aspire to but it’s great to aim high. The Glass: Rocks The Ingredients: absinthe to coat 2 fl oz rye whiskey ½ tsp sugar syrup 2 dashes Peychaud’s bitters ice cubes lemon zest twist The Instructions: Coat the inside of a glass with a little absinthe and then discard it. Build the rest of the ingredients in a mixing glass, slowly stirring over ice, and strain into a rocks glass. Squeeze the oil from the lemon zest twist over the surface of the drink and either drop in the zest or discard it. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/13#sthash.4CsOpr5X.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/VvhREkKeQAUOIpb12g9A")

    User.first.drinks.create!(
      name: "Old Fashioned",
      description: "The Glass: Highball or rocks The Ingredients: 1 tsp sugar syrup 2 dashes Angostura bitters 2½ fl oz bourbon whiskey orange zest to spritz ice cubes orange zest The Instructions: Place the sugar syrup and bitters in a glass, add one ice cube, and stir. Add some of the bourbon and another ice cube and continue stirring. Keep adding ice and bourbon alternately, while stirring, until all the bourbon has been added. Stir again, then squeeze the oil from the orange zest twist over the drink, drop in the zest, and continue stirring. The whole process should normally take a few minutes, but if the ice is wet make sure you taste as you go to avoid over dilution. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/14#sthash.SwR0Tyx0.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/96ZAkBtGTwKHezwoM7A1")

    User.first.drinks.create!(
      name: "Irish Coffee",
      description: "The Glass: Toddy The Ingredients: 1 fl oz Irish whiskey 1 tsp brown sugar 5 fl oz hot filter coffee 1¾ fl oz whipped cream 3 coffee beans The Instructions: Pour the whiskey, sugar, and coffee in order into the glass. Stir, top with the whipped cream, and garnish with the coffee beans. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/15#sthash.iCA9tEwy.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/Bk5atCUuTKKIEOuIjt9g")

    User.first.drinks.create!(
      name: "Margarita",
      description: "There’s no disputing that the margarita is the most popular tequila-based cocktail in town. The Glass: Martini The Ingredients: salt to rim glass 1¾ fl oz tequila 1 fl oz Cointreau 1 fl oz lime juice ice cubes lime wedge The Instructions: Rim a glass with salt, shake all the remaining ingredients hard with ice, and strain into the glass. Garnish with a lime wedge. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/16#sthash.lz4XBxnU.dpuf
",
      filepicker_url: "https://www.filepicker.io/api/file/Yl1DRq6bQwCyaTtCyoKS")

    User.first.drinks.create!(
      name: "Sidecar",
      description: "If you wish to remain faithful to the original specs, go with 1fl oz cognac, for a suitably authentic version. The Glass: Martini or coupe The Ingredients: sugar to rim 2 fl oz cognac 1 fl oz Cointreau 1 fl oz lemon juice ice cubes The Instructions: Shake all the ingredients with ice and strain into a glass. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/17#sthash.SMr9v61A.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/H0HOzQjtRLGzM34RDkii")

    User.first.drinks.create!(
      name: "Pisco Sour",
      description: "Just as the origins of the spirit itself divide opinion, this cocktail divides Peru and Chile and both claim ownership. The Peruvians argue its inventor was American Victor Morris at his eponymous bar in Lima in 1920, while Chileans claim its invention goes back to 1884 and an English sailor called Elliot Stubb, who replaced whiskey with pisco in his sour. The Glass: Sour, wine glass, or rocks The Ingredients: 2 fl oz pisco dash Angostura bitters 1 fl oz lemon juice 4½ tsp sugar syrup 1 egg white ice cubes The Instructions: Shake all the ingredients hard with ice and strain into a glass over fresh ice. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/18#sthash.VoBc1z4T.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/2poxhocpRWa3SGeS2XGk")

    User.first.drinks.create!(
      name: "Absinthe Cocktail",
      description: "This has enjoyed many incarnations over the years but the original recipe was a very basic mix. This one comes from Jerry Tomas’ 1887 Bartenders Guide, in which he uses the anisette liqueur instead of sugar to sweeten the drink. The Glass: Absinthe The Ingredients: 1fl oz absinthe 2 dashes anisette dash Angostura bitters 2 fl oz water ice cubes The Instructions: Shake all the ingredients with ice and strain into a glass. - See more at: http://www.mensfitness.com/life/20-cocktail-recipes/slide/19#sthash.sbQRHeke.dpuf",
      filepicker_url: "https://www.filepicker.io/api/file/wZLIZUsQLW8lgfUoMTpO")

    20.times do |drink|
      5.times do |x|
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
        Drink.find(drink+1).comments.create(author_id: x + 2, rating: r, body: review)
      end
      # Drink.average(drink)
    end

  end
end