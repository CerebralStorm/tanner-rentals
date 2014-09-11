# For more information see: http://emberjs.com/guides/routing/

TannerRentals.Router.map ()->
  @route 'settings', { path:'/settings/:user_id'}
  @route 'contact'

