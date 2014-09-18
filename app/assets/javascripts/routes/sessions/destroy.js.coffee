TannerRentals.SessionsDestroyRoute = Ember.Route.extend
   enter: ->
      controller = @controllerFor('currentUser')
      controller.set('content', undefined);

      TannerRentals.Session.find('current').then (session) ->
        session.deleteRecord()

      @transitionToRoute('index')