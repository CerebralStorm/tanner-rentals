TannerRentals.Lease = DS.Model.extend
  user: DS.belongsTo('user')
  unit: DS.belongsTo('unit')
  bills: DS.hasMany('bill', { async: true })
  startDate: DS.attr 'date'
  endDate: DS.attr 'date'
