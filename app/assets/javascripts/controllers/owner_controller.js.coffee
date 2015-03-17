TannerRentals.OwnerController = Ember.ObjectController.extend
  needs: ['currentUser', 'properties', 'bills']
  currentUser: Ember.computed.alias('controllers.currentUser.content')
  properties: Ember.computed.alias('controllers.properties.content')
  bills: Ember.computed.alias('controllers.bills.content')