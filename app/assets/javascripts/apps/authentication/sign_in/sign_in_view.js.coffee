AlexApp.module("Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.SignIn = Marionette.ItemView.extend
    template: JST["authentication/sign_in_template"]

    triggers:
      "click .js-submit": "form:submit"
    
    ui:
      error: "#auth-error-message"
      form: "form"

    displayError: () ->
      errorDiv = @ui.error

      if not errorDiv.is(":hidden")
        errorDiv.stop(true, true)
        errorDiv.hide()

      errorDiv.show(500).delay(3000).fadeOut(500)
)
