TannerRentals.UsersNewController = Ember.ObjectController.extend
  actions:
    saveUser: ->
      user = @get('model')

      success = (user) =>
        TannerRentals.get("flash").success "Signed up successfully"
        id = user.get('id')
        @set('currentUser', @store.find('user', id))
        @transitionToRoute('user')

      failure = (response) =>
        TannerRentals.get("flash").success "Sign up failed."
        console.log response

      user.save().then success, failure