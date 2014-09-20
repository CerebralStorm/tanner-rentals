TannerRentals.IndexRoute = Ember.Route.extend
  model: ->
    @store.find('unit')