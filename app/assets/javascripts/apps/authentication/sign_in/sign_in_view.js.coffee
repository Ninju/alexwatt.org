AlexApp.module("Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.SignIn = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/authentication/sign_in/sign_in_template")

    events: {
      "click .js-submit": "submitClicked"
    }

    submitClicked: (e) ->
      e.preventDefault()
      this.trigger("form:submit", this)

    onShow: () ->
      $("#error-message").hide()

    displayError: () ->
      $("#error-message").show().delay(5000).fadeOut()
)
