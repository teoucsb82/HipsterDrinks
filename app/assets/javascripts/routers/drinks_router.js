HipsterDrinks.Routers.DrinksRouter = Backbone.Router.extend({
  initialize: function ($rootEl, drinks) {
    this.$rootEl = $rootEl;
    this.drinks = drinks;
  },

  routes: {
    "": "index",
    ":id": "show"
  },

  index: function () {
    var drinksListView = new HipsterDrinks.Views.DrinksListView({
      collection: this.drinks
    });
    this._swapView(drinksListView);
  },

  show: function (id) {
    var that = this;
    var task = _(that.drinks).findWhere({ id: parseInt(id) });
    var drinkDetailView = new HipsterDrinks.Views.DrinkDetailView({
      model: task
    });
    that._swapView(drinkDetailView);
  },


  _swapView: function(view) {
    if(this._currentView) {
      this._currentView.remove();
    }
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});



