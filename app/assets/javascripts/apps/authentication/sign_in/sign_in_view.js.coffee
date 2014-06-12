AlexApp.module("Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.SignIn = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/authentication/sign_in/sign_in_template")

    events: {
      "click .js-submit": "submitClicked"
    }

    submitClicked: (e) ->
      e.preventDefault()
      this.trigger("form:submit", this)

    displayError: () ->
      errorDiv = $("#auth-error-message")

      if not errorDiv.is(":hidden")
        errorDiv.stop(true, true)
        errorDiv.hide()

      errorDiv.show(500).delay(3000).fadeOut(500)
)
