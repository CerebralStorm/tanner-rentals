# For more information see: http://emberjs.com/guides/routing/

TannerRentals.Router.map ()->
  @resource 'properties', ->
    @resource 'property', path: ":property_id"

  @resource 'users', ->
    @route 'new'
    @route 'settings', path:'/settings/:user_id'

  @resource 'sessions', ->
    @route 'new'
    @route 'destroy'

  @route 'contact'

