TannerRentals.TenateRoute = Ember.Route.extend
  model: ->
    @modelFor('currentUser')