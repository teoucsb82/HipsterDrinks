window.HipsterDrinks = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function($rootEl, tasks) {
  	HipsterDrinks.drinks = new HipsterDrinks.Collections.Drinks();
    new HipsterDrinks.Routers.DrinksRouter($rootEl, tasks);
    Backbone.history.start();
  }
};