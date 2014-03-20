HipsterDrinks.Views.DrinkForm = Backbone.View.extend({
	template: JST["drinks/form"],
	events: {
		'click input[type="submit"]': "submit"
	},

	render: function() {
		var rc = this.template({
			drink: this.model
		});
		this.$el.html(rc);
		return this;
	},

	submit: function(event) {
		event.preventDefault();
    var attrs = $(event.target.form).serializeJSON();
    function success () {
      Backbone.history.navigate("", { trigger: true });
    }
    this.model.set(attrs);
    if (this.model.isNew()) {
      this.collection.create(this.model, {
        success: success
      });
    } else {
      this.model.save({}, {
        success: success
      });
    }
  }
});