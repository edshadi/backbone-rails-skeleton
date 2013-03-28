//= require_self
//= require_tree ../templates
//= require_tree ./mixins
//= require_tree ./models
//= require_tree ./views
//= require_tree ./routers

window.COM = {
  Models: {},
  Collections: {},
  Routers: {},
  Views: {},
  Mixins: {},

  initialize: function(data) {
    if (!Backbone.history.started) {
      Backbone.history.start();
      Backbone.history.started = true;
    }
  }
}

