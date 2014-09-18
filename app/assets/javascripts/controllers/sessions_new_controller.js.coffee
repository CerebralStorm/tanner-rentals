TannerRentals.SessionsNewController = Ember.ObjectController.extend
  needs: ['currentUser']
  currentUser: Ember.computed.alias('controllers.currentUser.content')

  actions:
    signIn: ->
      session = @get('model')

      success = (session) =>
        TannerRentals.get("flash").success "Signed in successfully"
        id = session.get('id')
        @set('currentUser', @store.find('user', id))
        @transitionToRoute('user')

      failure = (response) =>
        TannerRentals.get("flash").success "Sign in failed."
        console.log response

      session.save().then success, failure