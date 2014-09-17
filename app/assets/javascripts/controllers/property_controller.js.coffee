TannerRentals.PropertyController = Ember.ObjectController.extend
  needs: ['currentUser']

  currentUser: Ember.computed.alias('controllers.currentUser.content')

  newLeaseUrl: (->
    userId = @get('currentUser.id')
    propertyId = @get("model.id")
    "/leases/new?user_id=#{userId}&property_id=#{propertyId}"
  ).property("model", "currentUser")