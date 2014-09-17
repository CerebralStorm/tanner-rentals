TannerRentals.UserRoute = Ember.Route.extend
  model: ->
    @modelFor('currentUser')