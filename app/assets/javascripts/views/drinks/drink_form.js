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

    var $fields = $(event.currentTarget).parent().children().children();
    $fields.removeClass("alert alert-danger alert-success");


    if ($('#drink-name').val() === "") {
      $('#drink-name').removeClass("alert alert-success");
      $('#drink-name').addClass("alert alert-danger");
    } else {
      $('#drink-name').removeClass("alert alert-danger");
      $('#drink-name').addClass("alert alert-success");
    }

    if ($('#drink-description').val() === "") {
      $('#drink-description').removeClass("alert alert-success");
      $('#drink-description').addClass("alert alert-danger");
    } else {
      $('#drink-description').removeClass("alert alert-danger");
      $('#drink-description').addClass("alert alert-success");
    }

    if ( !$('#drink-name').hasClass("alert-danger") && !$('#drink-description').hasClass("alert-danger")) {
      $('#drink-errors').removeClass("hidden")
      $('#drink-errors').removeClass("alert-danger")
      $('#drink-errors').addClass("alert-success")
      $('#drink-error-strong').text("Success!")
      $('#drink-error-text').text("Drink created!")
    } else {
      $('#drink-errors').removeClass("hidden")
      $('#drink-errors').removeClass("alert-success")
      $('#drink-errors').addClass("alert-danger")
      $('#drink-error-strong').text("Oops!")
      $('#drink-error-text').text("Looks like something went wrong...")
    }
   

    var attrs = $(event.target.form).serializeJSON();
    function success () {
      Backbone.history.navigate("", true );
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