TannerRentals.UsersNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('user')