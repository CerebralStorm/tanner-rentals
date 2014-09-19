# for more details see: http://emberjs.com/guides/views/

TannerRentals.PropertyView = Ember.View.extend
  templateName: 'property'

  willAnimateIn : ->
    @.$().css("opacity", 0)

  animateIn : ->
    @.$().fadeTo(500, 1)
