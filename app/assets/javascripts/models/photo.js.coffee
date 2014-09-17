TannerRentals.Photo = DS.Model.extend
  property: DS.belongsTo('property')
  url: DS.attr 'string'
