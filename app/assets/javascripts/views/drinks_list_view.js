//drinks index controller

HipsterDrinks.Views.DrinksListView = Backbone.View.extend({
  template: JST["drinks/list"],

  render: function () {
    var renderedContent = this.template({
      drinks: this.collection
    });

    this.$el.html(renderedContent);
    return this;
  }
});

