# [HipsterDrinks](http://www.hipsterdrinks.com)

## TODO

### Main Page
[] Below carousel need pictures of top X drinks
[X] Flash Errors

### User Page
[X] Follow other users
[] Build a virtual bar w/ ingredients -- long term...

### Drinks index page
[] make it completely filterable by bunch of options - checkboxes for alcohols, mixers, light/dark liquor
[X] Make it so users can only delete/edit their own drinks

### Drink show page
[]

### Drinks new page
[] Form for submitting drinks

## Overall
[] Get search functionality working

## Bug fixes
[] Nonregistered users should not be able to add drink. need redirect

## Known issues
--ASK A TA HOW TO FIX THIS
[X] Drinks CRUD allows non-logged in users to create drinks. Need to prevent them from having access. -- bootstrapped data
[] Similar issues for users being able to delete/edit non-posts
-- Sort of working, but would like to not display the button / throw an error before acting like it worked

[] Also have questions on filepicker / paperclip w/ Backbone CRUD
[] How to render partials in backbone (comments into drink CRUD)


drinks
--ingredients


# Friday
[] Finish Drink Crud
[][] allow users to add ingredients (one at a time). for each ingredient they should get a new form which lets them write in the name (should be writeaheadable based off ingredients database). They can either select an ingredient from the database, or custom write their own. After selecting ingredient, they should enter # and measurement (3 oz). Then either submit form or click 'add another ingredient' to repeat the process. For each ingredient added, the other should go away. THINK COMMENTS AND TODOS -- nested relationship here between drinks/ingredients.
[X][X] Paperclip file uploading?

# Saturday
[] Make drinks searchable/filterable

# Monday
[X] Add ratings/comments/favorites to drinks

# Tuesday
[] Add content/layout to main page

# Wednesday
[] Layout/CSS. Pretty up User/Drink show pages

# Thursday
[] Layout/error testing


TODO --

Clean out paperflip/filepicker artifacts/garbage
Clean up drink favoriting (ajax?). right now it's all page reloads
Add a "drinks you might like" section -- based off people you follow, do 

current_user.followed_users.each do |user| 
	user.favorite_drinks.each do |drink|
		return drink.name
	end
end


App Academy - Week 8 Day 5
Friday was day 3 of our Final Project in-class work, and I wound up rolling back my Backbone framework that I'd spent half of Thursday setting up. I just ran into too many issues getting it to play nicely with my other models, and especially with paperclip and/or filepicker (they both rely on ERB generated forms and I couldn't get them to load properly in the javascript ".jst.ejs" templates). I started to get a little nervous that I might spend way too much time fighting everything trying to shoehorn it into Backbone and that I'd be better off getting a functional site up in rails (you'll have to excuse the .2 second load time between pages) rather than a "hey this would be cool if it worked" backbone project. If I have any time left over at the end of designing my site through rails I will go back and re-do what I can in Backbone to make it quicker, until then I'm proceeding with mostly Rails and a little Javascript/jQuery sprinkled in along the way (main page mouseover responsive images, dynamic searching).

Once I made the call to go back to Rails I went back and got Filepicker working, which is a very sweet way to get images into the Drink (or whatever) models. Saturday I worked on the rating/review system for Drinks and got that to a good spot, unfortunately Sunday I was travelling and didn't get much uninterrupted time to make any serious progress. I cleaned up some CSS here and there, made the index show page sortable by attribute, and set up a nice seed bank for my drink data for when the site goes live/demo mode. Oh, and somewhere along the way I set up my "guest login" account logic (pretty happy with that, I just randomly generate a fake guest account each time rather than use a shared commom "guest/password" account). 

I have a few big features left to implement--

First off, I need to find a way to dynamically add ingredients to my drink. So if you create a "Gin and Tonic", you could start by adding "gin" (along with "1" and "oz") and then "tonic". I've already got a join table and the logic written that I can do @drink.ingredients and find them, or @ingredient.drinks and get it reverse (for searching/lookup later), I just need to be able to have one field show up initially that can then be expanded with a click on "add ingredient". Still have to sit down with a pencil and a napkin to figure out how I'm going to set that up. 

Secondly, I need to make my search fields autocomplete/typeahead, ideally based off the drink name and/or ingredients and/or any-other-attributes. My search right now only works off the @drink.name (should be a cinch to make it searchable by other/all fields), so once I can figure out how to make that autosearchable then I'll be set. I found a few cool jQuery libraries just through Google but haven't had the time to set that up, have 4 more days to do that. 

"Finally" (in quotes because I'm sure there'll be a lot more 'finally's to come after this), I need to make my show (and index) page snappier. Mouseover highlights, intuitive/responsive layout, and general tidyness/CSSing of pages. This seems like a million little things rolled into one, I've been researching design tips online to get good layout ideas but will probably wind up making it look like Yelp's display at the end of the day...

5 more days till demo day! Good times!