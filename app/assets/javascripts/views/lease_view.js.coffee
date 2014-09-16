# for more details see: http://emberjs.com/guides/views/

TannerRentals.LeaseView = Ember.View.extend
  templateName: 'lease'

TannerRentals.PropertyNewLeaseView = Ember.View.extend
  templateName: 'property/new_lease'

  didInsertElement: ->
    @pad = @$().signaturePad()

  willDestroyElement: ->
    @pad = null

  okay: ->
    @set "errorText", ""
    (if @pad.validateSignature() then (@get("controller").set("value", @pad.getSignatureImage())
    @close()
    ) else (@set("errorText", "Signature is too small, please try again.")
    @pad.clearCanvas()
    ))

  close: ->
    @pad = null
    @get("controller").send "hideModal"
