# For more information see: http://emberjs.com/guides/routing/

TannerRentals.Router.map ()->
  @resource 'properties', ->
    @resource 'property', path: ":property_id", ->
      @route 'new_lease'

  @route 'settings', path:'/settings/:user_id'
  @route 'contact'

