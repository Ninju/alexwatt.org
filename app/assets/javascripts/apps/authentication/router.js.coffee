AlexApp.module("Authentication", (Authentication, AlexApp, Backbone, Marionette, $, _) ->
  API = {
    signIn: () ->
      Authentication.SignIn.Controller.signIn()
  }

  AlexApp.on("authentication:sign_in", () ->
    API.signIn()
  )
)
