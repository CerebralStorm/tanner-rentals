TannerRentals.IndexController = Ember.ObjectController.extend
  needs: ['currentUser']

  currentUser: Ember.computed.alias('controllers.currentUser.content')