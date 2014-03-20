window.HipsterDrinks = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    HipsterDrinks.drinks = new HipsterDrinks.Collections.Drinks();

    // var indexView = new HipsterDrinks.Views.DrinksIndex({
    //   collection: HipsterDrinks.drinks
    // });
    // $("#drinks-content").html(indexView.render().$el);
    
    // HipsterDrinks.drinks.fetch();
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

$(document).ready(function(){
  HipsterDrinks.initialize();
});
