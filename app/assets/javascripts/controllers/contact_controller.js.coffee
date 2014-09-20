TannerRentals.ContactController = Ember.Controller.extend
  subject: null
  message: null

  actions:
    sendMessage: ->
      subject = @get('subject')
      message = @get('message')

      _this = @

      $.ajax
        type: "POST",
        url: "/mailer",
        data: {subject: subject, message: message}
        success: (data) ->
          _this.set('subject', null)
          _this.set('message', null)
          TannerRentals.get("flash").success data.success
        error: (data) ->
          TannerRentals.get("flash").error "Message sent!"
