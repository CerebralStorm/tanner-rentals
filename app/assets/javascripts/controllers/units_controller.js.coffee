TannerRentals.UnitsController = Ember.ObjectController.extend
  actions:
    saveUser: ->
      user = @get('model')

      success = (user) =>
        TannerRentals.get("flash").success "Your settings were saved"
      failure = (response) =>
        TannerRentals.get("flash").success "Your settings weren't saved successfully"
        console.log response

      user.save().then success, failure