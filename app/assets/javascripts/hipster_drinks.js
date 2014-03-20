window.HipsterDrinks = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function($rootEl, tasks) {
    console.log("and we're off");
    console.log(tasks);
  }
};

$(document).ready(function(){
  HipsterDrinks.initialize();
});
