TannerRentals.Unit = DS.Model.extend
  property: DS.belongsTo('property', { async: true })
  photos: DS.hasMany('photo', { async: true })
  leases: DS.hasMany('lease', { async: true })
  bedrooms: DS.attr 'number'
  bathrooms: DS.attr 'number'
  featurePhotoUrl: DS.attr 'string'
  description: DS.attr 'string'
  descriptionHeader: DS.attr 'string'
  vacancy: DS.attr 'boolean'