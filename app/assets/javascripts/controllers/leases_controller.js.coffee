TannerRentals.LeasesController = Ember.ArrayController.extend
  needs: ['currentUser']

  currentUser: Ember.computed.alias('controllers.currentUser.content')