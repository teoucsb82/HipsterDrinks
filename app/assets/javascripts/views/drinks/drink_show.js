HipsterDrinks.Views.DrinkShow = Backbone.View.extend({
	template: JST["drinks/show"],

	// events: {
	// 	"click button": "toggleFavorite"
	// },

	
	render: function() {
		var rc = this.template({ drink: this.model });
		this.$el.html(rc);
		return this;
	},

	// toggleFavorite: function(event) {
	// 	event.preventDefault();
	// 	var $target = $(event.currentTarget);
	// 	var drink = HipsterDrinks.drinks.get($target.attr("data-id"));
	// 	// var current_user = $("#current-user-id").attr("value");
	// 	console.log(event);
	// 	debugger
	// }

});