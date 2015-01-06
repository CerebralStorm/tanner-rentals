TannerRentals.Lease = DS.Model.extend
  user: DS.belongsTo('user')
  unit: DS.belongsTo('unit')
  startDate: DS.attr 'date'
  endDate: DS.attr 'date'
