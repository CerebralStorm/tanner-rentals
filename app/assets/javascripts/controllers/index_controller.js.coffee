TannerRentals.IndexController = Ember.ObjectController.extend
  needs: ['currentUser', 'properties']

  currentUser: Ember.computed.alias('controllers.currentUser.content')
  properties: Ember.computed.alias('controllers.properties.content')

  actions:
    saveUser: ->
      user = @get('model')

      success = (user) =>
        TannerRentals.get("flash").success "Signed up successfully"
        id = user.get('id')
        @set('currentUser', @store.find('user', id))
        @transitionTo('user')

      failure = (response) =>
        TannerRentals.get("flash").success "Sign up failed."
        console.log response

      user.save().then success, failure