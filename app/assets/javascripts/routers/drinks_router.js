HipsterDrinks.Routers.Drinks = Backbone.Router.extend({
	initialize: function(options) {
		this.drinks = options.drinks;
		this.$rootEl = options.$rootEl;
	},

	routes: {
		"" : "index",
		"new" : "new",
		":id" : "show",
		":id/edit" : "edit"
	},

	index: function() {
		var view = new HipsterDrinks.Views.DrinksIndex({
			collection: this.drinks
		});
		this._swapView(view);
	},

	edit: function(id) {
		var editView = new HipsterDrinks.Views.DrinkForm({
			model: this.drinks.get(id)
		});
		this._swapView(editView);
	},

	new: function() {
		console.log("hi from new")
		var newDrink = new HipsterDrinks.Models.Drink();
		var formView = new HipsterDrinks.Views.DrinkForm({
			collection: HipsterDrinks.drinks,
			model: newDrink
		});
		this._swapView(formView);
	},

	show: function(id) {
		var showView = new HipsterDrinks.Views.DrinkShow({
			model: this.drinks.get(id)
		});
		this._swapView(showView);
	},

	_getDrink: function(id, callback) {
		var that = this;
		var drink = HipsterDrinks.drinks.get(id);
		if(!drink) {
			drink = new HipsterDrinks.Models.Drink({ id: id });
			drink.collection = HipsterDrinks.drinks;
			drink.fetch({
				success: function() {
					that.drinks.add(drink);
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