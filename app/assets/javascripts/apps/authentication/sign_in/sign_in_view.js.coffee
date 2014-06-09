AlexApp.module("Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.SignIn = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/authentication/sign_in/sign_in_template")

    events: {
      "click .js-submit": "submitClicked"
    }

    submitClicked: (e) ->
      e.preventDefault()
      this.trigger("form:submit", Backbone.Syphon.serialize(this))
)
