# for more details see: http://emberjs.com/guides/models/defining-models/

TannerRentals.Property = DS.Model.extend
  photos: DS.hasMany('photo', { async: true })
  name: DS.attr 'string'
  address: DS.attr 'string'
  city: DS.attr 'string'
  state: DS.attr 'string'
  zip: DS.attr 'string'
