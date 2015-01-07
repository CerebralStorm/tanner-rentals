TannerRentals.Bill = DS.Model.extend
  user: DS.belongsTo('user', { async: true })
  lease: DS.belongsTo('lease', { async: true })
  dateIssued: DS.attr 'string'
  dateDue: DS.attr 'string'
  status: DS.attr 'string'