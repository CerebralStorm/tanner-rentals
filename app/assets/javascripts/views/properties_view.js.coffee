# for more details see: http://emberjs.com/guides/views/

TannerRentals.PropertiesView = Ember.View.extend
  templateName: 'properties'

  willAnimateIn : ->
    @.$().css("opacity", 0)

  animateIn : ->
    @.$().fadeTo(500, 1)
