window.HipsterDrinks = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    HipsterDrinks.drinks = new HipsterDrinks.Collections.Drinks();
    HipsterDrinks.drinks.fetch({
      success: function(drinks) {
        new HipsterDrinks.Routers.Drinks({
          $rootEl: $("#drinks-content"),
          drinks: HipsterDrinks.drinks
        });
        Backbone.history.start();
      }
    });
  }
};

// $(document).ready(function(){
//   HipsterDrinks.initialize();
// });
