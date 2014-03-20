HipsterDrinks.Views.DrinksListView = Backbone.View.extend({
  template: JST["drinks/list"],
  events: {
    "click li.drink" : "showDrink"
  },

  render: function () {
    var renderedContent = this.template({
      drinks: this.collection
    });

    this.$el.html(renderedContent);
    return this;

    // var ul = $("<ul></ul>");
    // _(that.collection).each(function (drink) {
    //   ul.append(
    //     $("<li></li>").text(drink.name)
    //   )
    // });

    // that.$el.html(ul);
    // return that;
  },

  showDrink: function(event) {
    var $target = $(event.target);
    console.log($target);
  }
});