TannerRentals.ApplicationRoute = Ember.Route.extend
  beforeModel: ->
    currentUser = @controllerFor("currentUser").get('content')
    if !currentUser.get('hasLease')
      @transitionTo('properties')