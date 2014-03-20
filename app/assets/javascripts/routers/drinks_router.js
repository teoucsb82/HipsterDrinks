HipsterDrinks.Routers.Drinks = Backbone.Router.extend({
	initialize: function(options) {
		this.drinks = options.drinks;
		this.$rootEl = options.$rootEl;
	},

	routes: {
		"" : "index",
		"new" : "new",
		":id" : "show"
	},

	index: function() {
		var view = new HipsterDrinks.Views.DrinksIndex({
			collection: this.drinks
		});
		this._swapView(view);
	},

	new: function() {
		var newDrink = new HipsterDrinks.Models.Drink();
		var formView = new HipsterDrinks.Views.DrinkForm({
			collection: HipsterDrinks.drinks,
			model: newDrink
		});
		this._swapView(formView);
	},

	show: function(id) {
		var that = this;
		that._getDrink(id, function(drink) {
			var formView = new HipsterDrinks.Views.DrinkShow({
				model: drink
			});
			that._swapView(formView);
		});

	},

	_getDrink: function(id, callback) {
		var drink = HipsterDrinks.drinks.get(id);
		if(!drink) {
			drink = new HipsterDrinks.Models.Drink({ id: id });
			drink.collection = HipsterDrinks.drinks;
			drink.fetch({
				success: function() {
					HipsterDrinks.drinks.add(drink);
					callback(drink);
				}
			});
			callback(drink);
		}
	},

	_swapView: function(view) {
		if(this.cv) {
			this.cv.remove();
		}
		this.cv = view;
		this.$rootEl.html(view.render().$el);
	}
})