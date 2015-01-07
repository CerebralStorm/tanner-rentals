TannerRentals.BillController = Ember.ObjectController.extend
  needs: ['currentUser']
  currentUser: Ember.computed.alias('controllers.currentUser.content')

  billUrl: (->
    billId = @get('id')
    "/bills/#{billId}"
  ).property('id')