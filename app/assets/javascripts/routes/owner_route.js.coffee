TannerRentals.OwnerRoute = Ember.Route.extend
  model: ->
    @modelFor('currentUser')