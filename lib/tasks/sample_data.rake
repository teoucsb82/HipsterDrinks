namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                 email: "guest",
                 password: "password")
    User.create!(
                 email: "foobar",
                 password: "foobar")
    20.times do |n|
      email = "#{Faker::Internet.user_name.to_s}-" + rand(100).to_s
      password  = "password"
      User.create!(
                   email: email,
                   password: password)
    end

    Ingredient.create(name: "Absinthe")
    Ingredient.create(name: "Anisette")
    Ingredient.create(name: "Angostura Bitter")
    Ingredient.create(name: "Bacardi Superior Rum")
    Ingredient.create(name: "Banana")
    Ingredient.create(name: "Beer")
    Ingredient.create(name: "Bitter Lemon")
    Ingredient.create(name: "Bitters")
    Ingredient.create(name: "Blackcurrant Cordial")
    Ingredient.create(name: "Blackcurrant Juice")
    Ingredient.create(name: "Bourbon Whiskey")
    Ingredient.create(name: "Brandy")
    Ingredient.create(name: "Brown Crème de Cacao")
    Ingredient.create(name: "Brown Sugar")
    Ingredient.create(name: "Butter")
    Ingredient.create(name: "Celery Salt")
    Ingredient.create(name: "Celery Stalk")
    Ingredient.create(name: "Champagne")
    Ingredient.create(name: "Chocolate")
    Ingredient.create(name: "Cider")
    Ingredient.create(name: "Cinnamon")
    Ingredient.create(name: "Cocoa Powder")
    Ingredient.create(name: "Coconut Cream")
    Ingredient.create(name: "Coffee")
    Ingredient.create(name: "Cognac")
    Ingredient.create(name: "Cointreau")
    Ingredient.create(name: "Coke")
    Ingredient.create(name: "Cranberry Juice")
    Ingredient.create(name: "Cream")
    Ingredient.create(name: "Dark Rum")
    Ingredient.create(name: "Diet Coke")
    Ingredient.create(name: "Double Cream")
    Ingredient.create(name: "Egg white")
    Ingredient.create(name: "Gin")
    Ingredient.create(name: "Ginger Ale")
    Ingredient.create(name: "Ginger Beer")
    Ingredient.create(name: "Gosling’s Black Seal rum")
    Ingredient.create(name: "Grenadine")
    Ingredient.create(name: "Heavy Cream")
    Ingredient.create(name: "Honey")
    Ingredient.create(name: "Honey Syrup")
    Ingredient.create(name: "Horseradish")
    Ingredient.create(name: "Hot Chocolate")
    Ingredient.create(name: "Ice")
    Ingredient.create(name: "Ice Cube")
    Ingredient.create(name: "Ice Crushed")
    Ingredient.create(name: "Irish Whiskey")
    Ingredient.create(name: "Lemon")
    Ingredient.create(name: "Lemon Juice")
    Ingredient.create(name: "Lemon Peel")
    Ingredient.create(name: "Lemon Slice")
    Ingredient.create(name: "Lemon Zest")
    Ingredient.create(name: "Lemonade")
    Ingredient.create(name: "Lime")
    Ingredient.create(name: "Lime Cordial")
    Ingredient.create(name: "Lime Juice")
    Ingredient.create(name: "Marmalade")
    Ingredient.create(name: "Mezcal")
    Ingredient.create(name: "Milk")
    Ingredient.create(name: "Mint Leaves")
    Ingredient.create(name: "Nutmeg")
    Ingredient.create(name: "Olive")
    Ingredient.create(name: "Orange Bitters")
    Ingredient.create(name: "Orange Juice")
    Ingredient.create(name: "Orange Slice")
    Ingredient.create(name: "Orange Zest")
    Ingredient.create(name: "Pepper")
    Ingredient.create(name: "Pineapple Juice")
    Ingredient.create(name: "Port")
    Ingredient.create(name: "Red Wine")
    Ingredient.create(name: "Rum")
    Ingredient.create(name: "Salt")
    Ingredient.create(name: "Sambuca")
    Ingredient.create(name: "Schnapps")
    Ingredient.create(name: "Scotch Whiskey")
    Ingredient.create(name: "Sherry")
    Ingredient.create(name: "Simple Syrup")
    Ingredient.create(name: "Soda Water")
    Ingredient.create(name: "Sparkling Water")
    Ingredient.create(name: "Sugar")
    Ingredient.create(name: "Sugar Syrup")
    Ingredient.create(name: "Sweet Vermouth")
    Ingredient.create(name: "Tabasco Sauce")
    Ingredient.create(name: "Tequila")
    Ingredient.create(name: "Tomato Juice")
    Ingredient.create(name: "Tonic Water")
    Ingredient.create(name: "Triple Sec")
    Ingredient.create(name: "Vermouth")
    Ingredient.create(name: "Vodka")
    Ingredient.create(name: "Water")
    Ingredient.create(name: "Whipped Cream")
    Ingredient.create(name: "Whiskey")
    Ingredient.create(name: "White Rum")
    Ingredient.create(name: "White Wine")
    Ingredient.create(name: "Worcestershire Sauce")
    Ingredient.create(name: "Yellow Chartreuse")
    Ingredient.create(name: "Apple Juice")
  
    User.first.drinks.create!(
      name: "Painkiller",
      recipe: "Shake all the ingredients with ice and strain into a glass over lots of fresh ice. Garnish with an orange slice and a cherry.",
      filepicker_url: "https://www.filepicker.io/api/file/mQGQItv9TDC6J6jO8Akr",
      logline: "Max Payne would love this one")
    painkiller = Drink.find(1)
    painkiller.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Dark Rum").id)
    painkiller.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Pineapple Juice").id)
    painkiller.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Orange Juice").id)
    painkiller.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Coconut Cream").id)
    painkiller.save

    painkiller.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        painkiller.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    painkiller.save

    User.first.drinks.create!(
      name: "The Historic Manhattan",
      recipe: "Stir up well; strain into a fancy cocktail glass; squeeze a piece of lemon peel on top, and serve.\r\n\r\n*To make sugar syrup, bring 1 cup sugar and 17 fl oz water to a boil in a pan, stirring constantly, then simmer for around 5 minutes until the sugar is dissolved. Let cool completely, then store for up to a month in the refrigerator in a glass jar with a tight-fitting lid",
      filepicker_url: "https://www.filepicker.io/api/file/hCkSZ30PQd206uR5nK2X",
      logline: "This one is taken from Harry Johnson’s New & Improved Bartender’s Manual, 1882. Harry even advises on the addition of absinthe: “It is for the customer to decide, whether to use absinthe or not. This is a very popular drink at the present day. It is the bartender’s duty to ask the customer whether he desires his drink dry or sweet.”")
    seed_drink = Drink.find(2)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Vermouth").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "dash", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "dash", ingredient_id: Ingredient.find_by_name("Orange Bitters").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "squeeze", ingredient_id: Ingredient.find_by_name("Lemon Peel").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save

    User.first.drinks.create!(
      name: "Brandy Alexander",
      recipe: "Shake all the ingredients with ice and strain into a glass. Garnish with a sprinkling of freshly grated nutmeg and serve.",
      filepicker_url: "https://www.filepicker.io/api/file/NLI1RYCXSmCWASq50dVs",
      logline: "Replacing the gin in an Alexander with the smoother, darker brandy sets this up as a decent dessert drink. Popularized during Prohibition, it features in WJ Tarling’s 1937 Café Royal Cocktail Book with one part brandy to half crème de cacao and cream, but it is more commonly served as below.")
    seed_drink = Drink.find(3)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Cognac").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Brown Crème de Cacao").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Heavy Cream").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "pinch", ingredient_id: Ingredient.find_by_name("Nutmeg").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save

    User.first.drinks.create!(
      name: "Clyde Common Whiskey Sour",
      recipe: "Shake all the ingredients well with cracked ice, strain into a glass, and garnish with a lemon zest twist.",
      filepicker_url: "https://www.filepicker.io/api/file/0WyDqqTzSgiQdL1DeKts",
      logline: "Your not-that-common whiskey drink.")
    seed_drink = Drink.find(4)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Bourbon Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Egg white").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "squeeze", ingredient_id: Ingredient.find_by_name("Lemon Zest").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save

    User.first.drinks.create!(
      name: "Tom Collins",
      recipe: "Shake the ingredients with ice and strain into a highball over fresh ice. Top with sparkling water and garnish with a slice of lemon.",
      filepicker_url: "https://www.filepicker.io/api/file/yfKEWQKwThnmkEYtoqr6",
      logline: "London stakes a claim to this drink from the early 1800s, when it was allegedly served at the coffeehouse bar at the Limmer’s Hotel.")
    seed_drink = Drink.find(5)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 4, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      ingredient_id: Ingredient.find_by_name("Sparkling Water").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, ingredient_id: Ingredient.find_by_name("Lemon Slice").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save

    User.first.drinks.create!(
      name: "Martini",
      recipe: "Stir the ingredients in a mixing glass with ice and strain into a martini glass. Garnish with an olive or a lemon zest twist.",
      filepicker_url: "https://www.filepicker.io/api/file/tuk6v48RCCqlK0Qduuv1",
      logline: "Steer clear of limes for garnish, unless you’ve got a penchant for the things. Or scurvy. Instead go with an olive or a lemon zest twist. If you’re going dry, then enhance the savory side with a few olives on a toothpick.")
    seed_drink = Drink.find(6)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Vermouth").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "squeeze", ingredient_id: Ingredient.find_by_name("Lemon Zest").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to taste", ingredient_id: Ingredient.find_by_name("Olive").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save

    User.first.drinks.create!(
      name: "Gin St. Clements",
      recipe: "Pour all ingredients into a glass over ice and stir. Garnish with slices of lemon and orange.",
      filepicker_url: "https://www.filepicker.io/api/file/e0pPs3qjSl2p4pnUGedD",
      logline: "Something about a saint.")
    seed_drink = Drink.find(7)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Orange Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Tonic Water").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "slice", ingredient_id: Ingredient.find_by_name("Lemon Slice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "slice", ingredient_id: Ingredient.find_by_name("Orange Slice").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Bloody Mary",
      recipe: "Rim the edge of a glass with salt and pepper. Place the remaining ingredients in a shaker, tumble gently, and pour into a glass over ice. Garnish with a stalk of celery and slice of lemon.",
      filepicker_url: "https://www.filepicker.io/api/file/EpnEUzXLQAqHfW2yZYi3",
      logline: "The best part of waking up.")
    seed_drink = Drink.find(8)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Vodka").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2.5, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 7, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Tomato Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 4, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Tabasco Sauce").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 8, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Worcestershire Sauce").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Horseradish").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, ingredient_id: Ingredient.find_by_name("Celery Stalk").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "pinch", ingredient_id: Ingredient.find_by_name("Celery Salt").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to taste", ingredient_id: Ingredient.find_by_name("Salt").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to taste", ingredient_id: Ingredient.find_by_name("Pepper").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save

    User.first.drinks.create!(
      name: "Mojito",
      recipe: "Muddle the mint leaves and sugar syrup in a glass, add the rum and lime juice, and fill with crushed ice. Stir and top with soda water. Top with more ice if necessary and garnish with a sprig of mint.",
      filepicker_url: "https://www.filepicker.io/api/file/NTM9BsUOTdS0ozKTM4li",
      logline: "Mo-ji-to.")
    seed_drink = Drink.find(9)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("White Rum").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 4, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to top", ingredient_id: Ingredient.find_by_name("Sparkling Water").id)
    seed_drink.drink_ingredients.create(
      ingredient_id: Ingredient.find_by_name("Mint Leaves").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Dark n' Stormy",
      recipe: "Fill a glass with ice, add the rum, and top with ginger beer. Garnish with a lemon wedge.",
      filepicker_url: "https://www.filepicker.io/api/file/adGAuF5QfK63vYdgu3Og",
      logline: "This drink has the rare “distinction” of a trademark, as odd as that might sound.  Gosling's claim is that it was first made when sailors added their brand’s Black Seal rum to a mug of ginger beer.")
    seed_drink = Drink.find(10)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Gosling’s Black Seal rum").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "cube", ingredient_id: Ingredient.find_by_name("Ice").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to fill", ingredient_id: Ingredient.find_by_name("Ginger Beer").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "slice", ingredient_id: Ingredient.find_by_name("Lemon Slice").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Mint Julep",
      recipe: "Muddle the sprig of mint in a mixing glass with the bourbon and sugar syrup. Add ice and shake. Strain into a glass or cup over crushed ice, stir, and top with more crushed ice. Garnish with 2 sprigs of mint.",
      filepicker_url: "https://www.filepicker.io/api/file/AKDJSxIJRddaYMsJIyTQ",
      logline: "Then comes the zenith of man’s pleasure. Then comes the julep – the mint julep. Who has not tasted one has lived in vain. The honey of Hymettus brought no such solace to the soul; the nectar of the Gods is tame beside it. It is the very dream of drinks, the vision of sweet quaffings.")
    seed_drink = Drink.find(11)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "sprigs", ingredient_id: Ingredient.find_by_name("Mint Leaves").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Bourbon Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "crushed", ingredient_id: Ingredient.find_by_name("Ice").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Sazerac",
      recipe: "Coat the inside of a glass with a little absinthe and then discard it. Build the rest of the ingredients in a mixing glass, slowly stirring over ice, and strain into a rocks glass. Squeeze the oil from the lemon zest twist over the surface of the drink and either drop in the zest or discard it.",
      filepicker_url: "https://www.filepicker.io/api/file/VvhREkKeQAUOIpb12g9A",
      logline: "Sazerac is the king of all the cocktails. It might be one to aspire to but it’s great to aim high.")
    seed_drink = Drink.find(12)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Bitters").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "zest", ingredient_id: Ingredient.find_by_name("Lemon Zest").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to coat", ingredient_id: Ingredient.find_by_name("Absinthe").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Old Fashioned",
      recipe: "Place the sugar syrup and bitters in a glass, add one ice cube, and stir. Add some of the bourbon and another ice cube and continue stirring. Keep adding ice and bourbon alternately, while stirring, until all the bourbon has been added. Stir again, then squeeze the oil from the orange zest twist over the drink, drop in the zest, and continue stirring. The whole process should normally take a few minutes, but if the ice is wet make sure you taste as you go to avoid over dilution.",
      filepicker_url: "https://www.filepicker.io/api/file/96ZAkBtGTwKHezwoM7A1",
      logline: "")
    seed_drink = Drink.find(13)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Angostura Bitter").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Bourbon Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "zest", ingredient_id: Ingredient.find_by_name("Orange Zest").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Irish Coffee",
      recipe: "Pour the whiskey, sugar, and coffee in order into the glass. Stir, top with the whipped cream, and garnish with the coffee beans.",
      filepicker_url: "https://www.filepicker.io/api/file/Bk5atCUuTKKIEOuIjt9g",
      logline: "I just call this 'coffee'")
    seed_drink = Drink.find(14)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Irish Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Brown Sugar").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Coffee").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.75, measurement_unit: "zest", ingredient_id: Ingredient.find_by_name("Whipped Cream").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "beans", ingredient_id: Ingredient.find_by_name("Coffee").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Margarita",
      recipe: "Rim a glass with salt, shake all the remaining ingredients hard with ice, and strain into the glass. Garnish with a lime wedge.",
      filepicker_url: "https://www.filepicker.io/api/file/Yl1DRq6bQwCyaTtCyoKS",
      logline: "There’s no disputing that the margarita is the most popular tequila-based cocktail in town. ")
    seed_drink = Drink.find(15)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Tequila").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Cointreau").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "wedge", ingredient_id: Ingredient.find_by_name("Lime").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to rim", ingredient_id: Ingredient.find_by_name("Salt").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Sidecar",
      recipe: "Shake all the ingredients with ice and strain into a glass.",
      filepicker_url: "https://www.filepicker.io/api/file/H0HOzQjtRLGzM34RDkii",
      logline: "If you wish to remain faithful to the original specs, go with 1fl oz cognac for a suitably authentic version.")
    seed_drink = Drink.find(16)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Cognac").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Cointreau").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "wedge", ingredient_id: Ingredient.find_by_name("Lime").id)
    seed_drink.drink_ingredients.create(
      measurement_unit: "to rim", ingredient_id: Ingredient.find_by_name("Sugar").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Pisco Sour",
      recipe: "2 fl oz pisco dash Angostura bitters 1 fl oz lemon juice 4½ tsp sugar syrup 1 egg white ice cubes The Instructions: Shake all the ingredients hard with ice and strain into a glass over fresh ice.",
      filepicker_url: "https://www.filepicker.io/api/file/2poxhocpRWa3SGeS2XGk",
      logline: "Peru and Chile both claim ownership of this drink's creation. The Peruvians argue its inventor was American Victor Morris at his eponymous bar in Lima in 1920, while Chileans claim its invention goes back to 1884 and an English sailor called Elliot Stubb, who replaced whiskey with pisco in his sour.")
    seed_drink = Drink.find(17)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Angostura Bitter").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 4.5, measurement_unit: "tsp", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, ingredient_id: Ingredient.find_by_name("Egg white").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.first.drinks.create!(
      name: "Absinthe Cocktail",
      recipe: "Shake all the ingredients with ice and strain into a glass.",
      filepicker_url: "https://www.filepicker.io/api/file/wZLIZUsQLW8lgfUoMTpO",
      logline: "This has enjoyed many incarnations over the years but the original recipe was a very basic mix. This one comes from Jerry Tomas’ 1887 Bartenders Guide, in which he uses the anisette liqueur instead of sugar to sweeten the drink.")
    seed_drink = Drink.find(18)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Absinthe").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Anisette").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "dash", ingredient_id: Ingredient.find_by_name("Angostura Bitter").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Water").id)
    
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################
    Ingredient.create(name: "Banks 5 Island Rum")
    Ingredient.create(name: "Honey Syrup")


    User.find_by_email("guest").drinks.create!(
      name: "Airmail",
      recipe: "Shake with ice and strain into a chilled coupe. Top with 1oz Moet Imperial Champagne. Garnish with a lime wheel",
      filepicker_url: "https://www.filepicker.io/api/file/IT5De7TSuqQopAhc2UNx",
      logline: "It ought to make you fly high")
    seed_drink = Drink.find_by_slug("airmail")
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Banks 5 Island Rum").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Honey Syrup").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Flor de Cana Silver Dry Rum")
    Ingredient.create(name: "Schonauer Apfel Schnapps")


    User.find_by_email("guest").drinks.create!(
      name: "Apple Daiquiri",
      recipe: "Shake with ice and strain into a chilled coupe.",
      filepicker_url: "https://www.filepicker.io/api/file/PWoBT02ZSPiuJ1oasRUT",
      logline: "Originally, we spiced the German apple Schnapps with Phillips Farm apple spread from the Union Square greenmarket. The Spread added complexity, but the recipe here works year-round.")
    seed_drink = Drink.find_by_slug("apple-daiquiri")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Flor de Cana Silver Dry Rum").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Schonauer Apfel Schnapps").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.25, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Plymouth Gin")
    Ingredient.create(name: "Dolin Dry Vermouth")
    Ingredient.create(name: "Luxardo Maraschino Liqueur")
    Ingredient.create(name: "Orange Bitters")


    User.find_by_email("guest").drinks.create!(
      name: "Tuxedo",
      recipe: "Stir with ice and strain into a chilled, Vieux Pontarlier Absinthe-rinsed coupe. Garnish with a lemon twist and a cherry",
      filepicker_url: "https://www.filepicker.io/api/file/TpT30v3oSw2mt3T7unuS",
      logline: "The tuxedo's roots can be traced back to the Tuxedo Park Club, in New York's Ramapo Mountains, where the sporty look became all the rage.")
    seed_drink = Drink.find_by_slug("tuxedo")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Plymouth Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Dolin Dry Vermouth").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.25, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Luxardo Maraschino Liqueur").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Orange Bitters").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Rittenhouse Bonded Rye Whiskey")

    User.find_by_email("guest").drinks.create!(
      name: "Whiskey Smash",
      recipe: "Muddle the lemon wedges, mint leaves, and simple syrup. Add the rye, then shake with ice and fine-strain into a chilled rocks glass filled with ice. Garnish with a mint sprig.",
      filepicker_url: "https://www.filepicker.io/api/file/ql1aDJ7NRYSo02oYtUqN",
      logline: "Serve this to folks who proclaim they would never drink whiskey and see what happens.")
    seed_drink = Drink.find_by_slug("whiskey-smash")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Rittenhouse Bonded Rye Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "wedges", ingredient_id: Ingredient.find_by_name("Lemon").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 6, measurement_unit: "leaves", ingredient_id: Ingredient.find_by_name("Mint Leaves").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Tanqueray Gin")
    Ingredient.create(name: "Dolin Sweet Vermouth")
    Ingredient.create(name: "Green Chartreuse")

    User.find_by_email("guest").drinks.create!(
      name: "Bijou",
      recipe: "Stir with ice and strain into a chilled coupe. Garnish with a cherry and a lemon twist",
      filepicker_url: "https://www.filepicker.io/api/file/AvuZPt4S360pgCWmqoI2",
      logline: "French for 'jewel', some believe the colors of the three primary ingredients represent precious stones: gin (diamond), sweet vermouth (ruby), and Green Chartreuse (emerald)")
    seed_drink = Drink.find_by_slug("bijou")
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Tanqueray Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Dolin Sweet Vermouth").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Green Chartreuse").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "dash", ingredient_id: Ingredient.find_by_name("Orange Bitters").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Beefeater Gin")
    Ingredient.create(name: "Carpano Antica Sweet Vermouth")

    User.find_by_email("guest").drinks.create!(
      name: "Bronx",
      recipe: "Shake with ice and strain into chilled coupe",
      filepicker_url: "https://www.filepicker.io/api/file/HMPCKhheRyKivTx7Rsun",
      logline: "The Bronx was named after the zoo, not the borough, and was one of the most popular drinks of its time")
    seed_drink = Drink.find_by_slug("bronx")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Beefeater Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Dolin Dry Vermouth").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Orange Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Carpano Antica Sweet Vermouth").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Famous Grouse Blended Scotch Whisky")
    Ingredient.create(name: "Drambuie")

    User.find_by_email("guest").drinks.create!(
      name: "Rusty Nail",
      recipe: "Stir with ice and strain over a large cube into a chilled rocks glass. No garnish.",
      filepicker_url: "https://www.filepicker.io/api/file/KRt489keSeOe8DZSolQe",
      logline: "Originally known as the B.I.F. cocktail, it first appeared in 1937 but didn't get its current name until appearing in popular cocktail books in the 1970s.")
    seed_drink = Drink.find_by_slug("rusty-nail")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Famous Grouse Blended Scotch Whisky").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Drambuie").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Elijah Craig 12-Year-Old-Bourbon")

    User.find_by_email("guest").drinks.create!(
      name: "Gold Rush",
      recipe: "Shake with ice and strain over a large cube into a chilled rocks glass. No garnish.",
      filepicker_url: "https://www.filepicker.io/api/file/MXu9BBlrTBmRj1JFQae0",
      logline: "This will fundamentally change the way you view cocktails - T.J. Siegal, New York, circa 2000")
    seed_drink = Drink.find_by_slug("gold-rush")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Elijah Craig 12-Year-Old-Bourbon").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.0, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Honey Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################



    Ingredient.create(name: "Flor de Cana Silver Dry Rum")
    Ingredient.create(name: "Coconut Sorbet")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Coconut Colada",
      recipe: "Shake with ice and strain into a chilled coupe. Garnish with a lime wheel",
      filepicker_url: "https://www.filepicker.io/api/file/A70MndQIRhaPUqRq5HW5",
      logline: "It's like being on the beach, mon!")
    seed_drink = Drink.find_by_slug("coconut-colada")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Flor de Cana Silver Dry Rum").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.0, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Pineapple Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "scoop", ingredient_id: Ingredient.find_by_name("Coconut Sorbet").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Siembra Azul Reposado Tequila")
    Ingredient.create(name: "Viex Pontarlier Absinthe")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "El Burro",
      recipe: "Shake with ice and strain into a chilled Collins glass filled with ice. Garnish with a lime wheel and a piece of candied ginger.",
      filepicker_url: "https://www.filepicker.io/api/file/6PG66ScNRpaDYSX6R17u",
      logline: "A highball made with lime juice and ginger ale is a buck; substitute ginger beer for ale and it's a mule; add absinthe and you've got yourself a donkey.")
    seed_drink = Drink.find_by_slug("el-burro")
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Siembra Azul Reposado Tequila").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.0, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Ginger Beer").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Pineapple Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.25, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Viex Pontarlier Absinthe").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Dr. Konstantin Frank Dry Riesling")
    Ingredient.create(name: "Clear Creek Pear Brandy")
    Ingredient.create(name: "Marie Brizard Orange Curacao")
    Ingredient.create(name: "Peychaud's Bitters")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Falling Leaves",
      recipe: "Stir with ice and strain into a chilled coupe. Garnish with a star anise pod.",
      filepicker_url: "https://www.filepicker.io/api/file/5iHwKvnqStynQej47IUg",
      logline: "Audrey Saunders created this autumnal, wine-based cocktail at Bemelman's Bar, in the Carlyle Hotel, in 2004.")
    seed_drink = Drink.find_by_slug("falling-leaves")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Dr. Konstantin Frank Dry Riesling").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.0, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Clear Creek Pear Brandy").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Marie Brizard Orange Curacao").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.25, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Honey Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Peychaud's Bitters").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Siembra Azul Blanco Tequila")
    Ingredient.create(name: "Theuriet Creme de Cassis")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "El Diablo",
      recipe: "Shake with ice and strain into a chilled rocks glass filled with ice.",
      filepicker_url: "https://www.filepicker.io/api/file/Co6vOAPjRVCnr0eYHvcQ",
      logline: "Trader Vic's revised bartender's manual devoted 9 pages to tequila drinks, 8 more than any other significant cocktail book of the century")
    seed_drink = Drink.find_by_slug("el-diablo")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Siembra Azul Blanco Tequila").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.0, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Ginger Beer").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Theuriet Creme de Cassis").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.find(rand(User.count) + 1).drinks.create!(
      name: "French 75",
      recipe: "Shake with ice and strain into a chilled coupe. Top with 1 oz Moet Imperial Champagne. Garnish with a lemon twist.",
      filepicker_url: "https://www.filepicker.io/api/file/Lmad67pBQKmIif4AFbbX",
      logline: "Named after the French 75-millimeter gun, a revolutionary piece of artillery employed during World War I.")
    seed_drink = Drink.find_by_slug("french-75")
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Tanqueray Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Gimlet",
      recipe: "Shake with ice and strain into a chilled coupe. Garnish with a lime wheel.",
      filepicker_url: "https://www.filepicker.io/api/file/hLc2upErQO6oqLe3yifP",
      logline: "The Gimlet may have been named after British Royal Navy Surgeon General Sir Thomas Gimlette, who took his scurvy inhibitor with a tot of gin.")
    seed_drink = Drink.find_by_slug("gimlet")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Plymouth Gin").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Cordial").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################
    Ingredient.create(name: "Wild Turkey Rye Whiskey")
    Ingredient.create(name: "Lillet Blanc")
    Ingredient.create(name: "Laird's Bonded Apple Brandy")
    Ingredient.create(name: "Abbott's Bitters")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Harvest Moon",
      recipe: "Stir with ice and strain into a chilled coupe. Garnish with an orange twist.",
      filepicker_url: "https://www.filepicker.io/api/file/whTca4E7QCmhOiwEiblb",
      logline: "This drink looks like the sky during the harvest moon -- when the reddish-orange moon (the orange twist) rises after sunset.")
    seed_drink = Drink.find_by_slug("harvest-moon")
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Wild Turkey Rye Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.0, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lillet Blanc").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Laird's Bonded Apple Brandy").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.25, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Green Chartreuse").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 3, measurement_unit: "dashes", ingredient_id: Ingredient.find_by_name("Abbott's Bitters").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Hangar One Buddha's Hand Vodka")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Cosmopolitan",
      recipe: "Shake with ice and strain into a chilled coupe. \nGarnish with an orange twist.",
      filepicker_url: "https://www.filepicker.io/api/file/rntVSfURTBio4xNVnhZx",
      logline: "Dale DeGroff and Toby Cecchini are both credited with popularizing the Cosmo in Manhattan in the late 1980s. Gary Regan believes that Cheryl Cooke, of Miami, created this drink in 1985.")
    seed_drink = Drink.find_by_slug("cosmopolitan")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Hangar One Buddha's Hand Vodka").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Cointreau").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Cranberry Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.25, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Daiquiri",
      recipe: "Shake with ice and strain into a chilled coupe. \nGarnish with a lime wheel.",
      filepicker_url: "https://www.filepicker.io/api/file/jQyUYre5QsSHNiG0112g",
      logline: "Charles H. Baker claims his friends Harry Stout and Jennings Cox created the Daiquiri in a village of the same name situated outside the Bacardi plant in Santiago de Cuba.")
    seed_drink = Drink.find_by_slug("daiquiri")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Banks 5 Island Rum").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Diamondback",
      recipe: "Shake with ice and strain into a chilled coupe. \nNo garnish.",
      filepicker_url: "https://www.filepicker.io/api/file/64Hlz1JbQASnNdB0NOVK",
      logline: "According to Bottoms Up, the Diamondback hailed from the lounge of the same name in the Lord Baltimore Hotel.")
    seed_drink = Drink.find_by_slug("diamondback")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Rittenhouse Bonded Rye Whiskey").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Laird's Bonded Apple Brandy").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Yellow Chartreuse").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################
    Ingredient.create(name: "Clear Creek Plum Brandy")
    Ingredient.create(name: "Bols Genever")
    Ingredient.create(name: "Creme Yvette")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Flying Dutchman",
      recipe: "Shake with ice and strain into a chilled coupe. \nGarnish with one brandied cherry.",
      filepicker_url: "https://www.filepicker.io/api/file/o2GsHcQqTZSB1Fv3MEMr",
      logline: "An ancestor of the Aviation Cocktail the name references Dutch genever, not the cursed ship forever lost at sea.")
    seed_drink = Drink.find_by_slug("flying-dutchman")
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Clear Creek Plum Brandy").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Bols Genever").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Creme Yvette").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Pineapple Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, measurement_unit: "barspoon", ingredient_id: Ingredient.find_by_name("Luxardo Maraschino Liqueur").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Jack Rose",
      recipe: "Shake with ice and strain into a chilled coupe. \nNo garnish.",
      filepicker_url: "https://www.filepicker.io/api/file/ap8w7u45SMWMPSS92Fho",
      logline: "One of the many hypotheses surrounding the name of this drink is that it is a corruption of Jacquemont, a pink rose with a similar hue to this drink.")
    seed_drink = Drink.find_by_slug("jack-rose")
    seed_drink.drink_ingredients.create(
      measurement_amount: 2, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Laird's Bonded Apple Brandy").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.75, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Grenadine").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################

    Ingredient.create(name: "Macchu Pisco")
    Ingredient.create(name: "St. Germain Elderflower Liqueuer")

    User.find(rand(User.count) + 1).drinks.create!(
      name: "Judgement Day",
      recipe: "Dry-shake, then shake with ice and strain into a chilled, Pernod Absinthe-rinsed egg coupe. \nGarnish with 2 spritzes of St. Elizabeth Allspice Dram.",
      filepicker_url: "https://www.filepicker.io/api/file/h8X7pTMwSMeomUhSMNg0",
      logline: "Legend has it this drink was co-invented by Sylvester Stallone and Arnold Schwarzenegger")
    seed_drink = Drink.find_by_slug("judgement-day")
    seed_drink.drink_ingredients.create(
      measurement_amount: 1.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Macchu Pisco").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("St. Germain Elderflower Liqueuer").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lime Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Lemon Juice").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 0.5, measurement_unit: "oz", ingredient_id: Ingredient.find_by_name("Simple Syrup").id)
    seed_drink.drink_ingredients.create(
      measurement_amount: 1, ingredient_id: Ingredient.find_by_name("Egg white").id)
    seed_drink.save

    seed_drink.drink_ingredients.each do |di|
      unless di.ingredient_id.nil?
        seed_drink.hidden_fields += (" " + Ingredient.find(di.ingredient_id).name)
      end
    end
    seed_drink.save
    ###########################
 

    Drink.all.count.times do |drink|
      10.times do |x|
        r = rand(5) + 1
        r = (rand(5) + 1) if r == 1 || r == 5

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
        Drink.find(drink+1).comments.create(author_id: x + 5, rating: r, body: review)
      end
      # Drink.average(drink)
    end

    10.times do |x|
      drink = Drink.find(rand(Drink.count) + 1)
      guest = User.find_by_email("guest")
      guest.favorite_drinks << drink unless guest.favorite_drinks.include?(drink)
    end

  end
end