TannerRentals.IndexView = Ember.View.extend

  willAnimateIn : ->
    @.$().css("opacity", 0)

  animateIn : ->
    @.$().fadeTo(500, 1)