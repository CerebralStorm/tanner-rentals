TannerRentals.PropertiesRoute = Ember.Route.extend
  model: ->
    @store.find('property')