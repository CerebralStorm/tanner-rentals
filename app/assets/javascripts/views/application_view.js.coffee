TannerRentals.ApplicationView = Ember.View.extend
  classNames: ["ember-app"]

  willAnimateIn : ->
    @.$().css("opacity", 0)

  animateIn : ->
    @.$().fadeTo(500, 1)
