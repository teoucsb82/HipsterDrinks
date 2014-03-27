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





###########
 <li class="col-xs-3" style="list-style:none; margin-left:0px">
        <div class="thumbnail box">
          <div class="caption">
            <h3 align="center"><%= link_to drink.name, drink_url(drink) %></h3>
            <p align="center"><%= link_to drink.logline, drink_url(drink) %></p>
          </div>
           <% if drink.filepicker_url == "" %>
            <center><i class="fa fa-glass fa-5x main-color"></i></center>
          <% else %>
            <%= filepicker_image_tag drink.filepicker_url, w: 250, h: 250 %>
          <% end %>
          
          <h4 align="center"><%= drink.name %></h4>
          
          <center>
            <strong rel="tooltip" title="<%= drink.average %> Rating" data-placement="right">
              <% drink.average.floor.times do %>
                <i class="fa fa-star main-color"></i>
              <% end %>
              <% remainder = drink.average %>

              <% while remainder >= 1 %>
                <% remainder -= 1 %>
              <% end %>
              <% if remainder >= 0.5 %>
                <i class="fa fa-star-half main-color"></i>
              <% end %>
            </strong>
          </center>
        </div>
      </li>


#################### old index

<script type="text/javascript">
$(document).ready(function(){
 
    $("[rel='tooltip']").tooltip();    
 
    $('#hover-cap-4col .thumbnail').hover(
        function(){
            $(this).find('.caption').fadeIn(250); //.fadeIn(250)
        },
        function(){
            $(this).find('.caption').fadeOut(250); //.fadeOut(205)
        }
    );    
});        
</script>



  <div class="container" id="drinks">
    <% counter = 0 %>
    <ul>
      <li style="list-style:none; margin-right: 50px; margin-bottom: 20px"><h3 align="right">Sort by <%= sortable "name", "Name" %> <%= sortable "average", "Rating" %></h3></li>
    </ul>

    <ul class="thumbnails" id="hover-cap-4col-2" style="margin-left: 0; padding-left: 0" >
      <% @drinks.each do |drink| %>
        <% counter += 1 %>
        <li class="col-xs-3" style="list-style:none; margin-left:0px">
          <div class="thumbnail box">
            <div class="caption">
              <h3 align="center"><%= link_to drink.name, drink_url(drink) %></h3>
              <p align="center"><%= link_to drink.logline, drink_url(drink) %></p>
            </div>
            <% if drink.filepicker_url == "" %>
              <%= image_tag "http://09d34b2605c894cf3689-55532e225f0dd3533674afd740b8ae61.r49.cf2.rackcdn.com/458d748d685caf51b1fd1987e76dc225-cefc3d72026600a39da171c01fca53fc.gif", size: "250" %>
            <% else %>
              <%= filepicker_image_tag drink.filepicker_url, w: 250, h: 250 %>
            <% end %>
            
            <h4 align="center"><%= drink.name %></h4>
            
            <center>
              <strong rel="tooltip" title="<%= drink.average %> Rating" data-placement="right">
                <% drink.average.floor.times do %>
                  <i class="fa fa-star main-color"></i>
                <% end %>
                <% remainder = drink.average %>

                <% while remainder >= 1 %>
                  <% remainder -= 1 %>
                <% end %>
                <% if remainder >= 0.5 %>
                  <i class="fa fa-star-half main-color"></i>
                <% end %>
              </strong>
            </center>
          </div>
        </li>
        <% if counter % 4 == 0 %>
          <div class="row"></div>
        <% end %>
      <% end %>
    

    <!-- , w: 160, h: 160 -->

    <%= will_paginate @drinks %>
  </div>
<% end %>