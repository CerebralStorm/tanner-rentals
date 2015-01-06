TannerRentals.ApplicationRoute = Ember.Route.extend
    setupController: ->
      @controllerFor('properties').set 'model', @store.find('property')
      @controllerFor('units').set 'model', @store.find('unit')
      @controllerFor('leases').set 'model', @store.find('lease')
