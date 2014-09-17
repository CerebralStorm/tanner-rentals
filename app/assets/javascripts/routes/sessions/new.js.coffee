TannerRentals.SessionsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('session')