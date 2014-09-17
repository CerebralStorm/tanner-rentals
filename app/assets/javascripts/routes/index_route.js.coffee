TannerRentals.IndexRoute = Ember.Route.extend
  model: ->
    @store.createRecord('user')