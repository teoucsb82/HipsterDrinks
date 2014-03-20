//drinks show controller

HipsterDrinks.Views.DrinkDetailView = Backbone.View.extend({
  template: JST["drinks/detail"],

  render: function () {
    var renderedContent = this.template({
      drink: this.model
    });

    this.$el.html(renderedContent);
    return this;
  }
});

