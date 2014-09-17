Ember.Application.initializer
  name: 'currentUser'

  initialize: (container) ->
    store = container.lookup('store:main')
    id = $('meta[name="current-user"]').attr('content')
    if id
      TannerRentals.deferReadiness()
      id = JSON.parse(id)
      store.find('user', id).then (user) =>
        controller = container.lookup('controller:currentUser').set('content', user)
        TannerRentals.advanceReadiness()