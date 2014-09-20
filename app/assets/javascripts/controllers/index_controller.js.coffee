TannerRentals.IndexController = Ember.ObjectController.extend
  needs: ['properties', 'currentUser', 'units']

  currentUser: Ember.computed.alias('controllers.currentUser.content')
  properties: Ember.computed.alias('controllers.properties.content')
  units: Ember.computed.alias('controllers.units.content')