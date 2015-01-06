TannerRentals.UnitController = Ember.ObjectController.extend
  needs: ['currentUser']
  currentUser: Ember.computed.alias('controllers.currentUser.content')

  newLeaseUrl: (->
    unitId = @get('id')
    currentUserId = @get('currentUser.id')
    "/leases/new?unit_id=#{unitId}&user_id=#{currentUserId}"
  ).property('currentUser', 'id')