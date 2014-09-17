TannerRentals.IndexController = Ember.ObjectController.extend
  needs: ['currentUser', 'properties']

  currentUser: Ember.computed.alias('controllers.currentUser.content')
  properties: Ember.computed.alias('controllers.properties.content')

  actions:
    saveUser: ->
      @get('model').save()