TannerRentals.User = DS.Model.extend
  password: DS.attr('string')
  passwordConfirmation: DS.attr('string')
  email: DS.attr('string')
  name: DS.attr('string')
  phone: DS.attr('string')
  role: DS.attr('string')
  createdAt: DS.attr('string')
  updatedAt: DS.attr('string')
  hasLease: DS.attr('boolean')

  isOwner: (->
    @get('role') == "Owner"
  ).property()