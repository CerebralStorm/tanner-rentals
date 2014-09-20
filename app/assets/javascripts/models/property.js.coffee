# for more details see: http://emberjs.com/guides/models/defining-models/

TannerRentals.Property = DS.Model.extend
  units: DS.hasMany('unit', { async: true })
  name: DS.attr 'string'
  address: DS.attr 'string'
  city: DS.attr 'string'
  state: DS.attr 'string'
  zip: DS.attr 'string'
  description: DS.attr 'string'
  descriptionHeader: DS.attr 'string'