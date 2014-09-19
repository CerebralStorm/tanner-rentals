TannerRentals.IndexController = Ember.ObjectController.extend
  needs: ['properties', 'currentUser']

  currentUser: Ember.computed.alias('controllers.currentUser.content')
  properties: Ember.computed.alias('controllers.properties.content')