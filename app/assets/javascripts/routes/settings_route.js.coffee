TannerRentals.SettingsRoute = Ember.Route.extend
  model: ->
    @controllerFor("currentUser").get('content')