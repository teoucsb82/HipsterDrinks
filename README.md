# [HipsterDrinks](http://www.hipsterdrinks.com)

## TODO

[] Build a virtual bar w/ ingredients -- long term...
[] make it completely filterable by bunch of options - checkboxes for alcohols, mixers, light/dark liquor
[X] Make it so users can only delete/edit their own drinks

### Drink show page
[] Comments layout/rendering. 
[] Add "edit review" button

## Known issues

# Wednesday
[] Layout/CSS. Pretty up User/Drink show pages

# Thursday
[] Layout/error testing


TODO --

Clean out paperflip/filepicker artifacts/garbage
Clean up drink favoriting (ajax?). right now it's all page reloads
Add a "drinks you might like" section -- based off people you follow, do 
*** Add "build a bar" section to USERS. 


# Thurs

* Drinks index page
- Clean up page. Add images sorted by rating (think nv.com). 30 min
-Have tabbed display here to show "ALL DRINKS" (default), "FRESH DRINKS" (new stuff), and "The Essentials" (top 10-20 drinks... think seed drinks). 1 hr
- Add "sort by" links at the top. either do a dropdown, or list of options to click (prefer latter) (10 min)
- Add endless scrolling (1hr)
~4pmish

* Drinks show/main page -- fix layout on thumbnails...

* Users Profile
- comment out following stuff...not really necessary
- focus on: tabbed display for "favorite drinks", "submitted drinks". for submitted drinks, give edit link options
- show "recently viewed drinks"

- Replace user index page with forums.

- Set up a caching layer -- "its immediately a big win if you can search Redis caches instead of the actual DB".

KNOWN BUGS -- 
edit page not working properly. displaying (and saving...) extra fields it shouldn't be
endless scroll mouseover not displaying properly for later lis
