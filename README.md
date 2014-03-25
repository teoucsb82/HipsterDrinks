# [HipsterDrinks](http://www.hipsterdrinks.com)

## TODO

### Main Page
[X] Below carousel need pictures of top X drinks
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
*** Add "build a bar" section to USERS. 

current_user.followed_users.each do |user| 
	user.favorite_drinks.each do |drink|
		return drink.name
	end
end


310-399-3553. denise