HipsterDrinks.Views.DrinksIndex = Backbone.View.extend({
	template: JST["drinks/index"],
	
	initialize: function(){
		this.listenTo(this.collection, "add change:title remove reset", this.render);
	},

	events: {
		"click .delete": "destroyDrink"
	},

	render: function() {
		var rc = this.template({ drinks: this.collection });
		this.$el.html(rc);
		return this;
	},

  destroyDrink: function (event) {
    var $target = $(event.target);
    var drink = this.collection.get($target.attr("data-id"));

    drink.destroy();
  }

});