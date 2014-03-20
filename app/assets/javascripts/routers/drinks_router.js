HipsterDrinks.Routers.DrinksRouter = Backbone.Router.extend({
  initialize: function ($rootEl, drinks) {
    this.$rootEl = $rootEl;
    this.drinks = drinks;
  },

  routes: {
    "": "index",
    "drinks/:id": "show"
  },

  index: function () {
    var that = this;

    var drinksListView = new HipsterDrinks.Views.DrinksListView({
      collection: that.drinks
    });
    that.$rootEl.html(drinksListView.render().$el);
  },

  show: function (id) {
    console.log("I'm just getting warmed up!");
  }
});