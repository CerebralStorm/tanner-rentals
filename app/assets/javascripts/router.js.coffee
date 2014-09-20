# For more information see: http://emberjs.com/guides/routing/

TannerRentals.Router.map ()->
  @resource 'properties', ->
    @resource 'property', path: ":property_id"

  @resource 'units', ->
    @resource 'unit', path: ":unit_id"

  @resource 'users', ->
    @route 'new'

  @resource 'user'
  @resource 'tenant'
  @resource 'owner'

  @resource 'sessions', ->
    @route 'new'
    @route 'destroy'

  @route 'contact'
  @route 'settings'

