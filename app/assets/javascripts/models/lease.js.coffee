# for more details see: http://emberjs.com/guides/models/defining-models/

TannerRentals.Lease = DS.Model.extend
  userId: DS.attr 'number'
  startDate: DS.attr 'date'
  endDate: DS.attr 'date'
