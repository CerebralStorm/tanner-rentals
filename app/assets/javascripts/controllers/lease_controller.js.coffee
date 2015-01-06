TannerRentals.LeaseController = Ember.ObjectController.extend
  needs: ['currentUser']
  currentUser: Ember.computed.alias('controllers.currentUser.content')

  leaseUrl: (->
    "/leases/#{@get('id')}"
  ).property('id')

  editLeaseUrl: (->
    "/leases/#{@get('id')}/edit"
  ).property('id')