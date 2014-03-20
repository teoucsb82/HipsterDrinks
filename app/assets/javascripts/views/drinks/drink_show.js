HipsterDrinks.Views.DrinkShow = Backbone.View.extend({
	template: JST["drinks/show"],
	
	render: function() {
		var rc = this.template({ drink: this.model });
		this.$el.html(rc);
		return this;
	}

});