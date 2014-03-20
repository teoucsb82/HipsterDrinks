window.HipsterDrinks = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function($rootEl, tasks) {
    new HipsterDrinks.Routers.DrinksRouter($rootEl, tasks);
    Backbone.history.start();
  }
};

// $(document).ready(function(){
//   HipsterDrinks.initialize();
// });
