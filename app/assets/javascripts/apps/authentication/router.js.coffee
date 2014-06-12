AlexApp.module("Authentication", (Authentication, AlexApp, Backbone, Marionette, $, _) ->
  Authentication.Router = Marionette.AppRouter.extend
    appRoutes: {
      "sign_in": "signIn"
    }

  API = {
    signIn: () ->
      Authentication.SignIn.Controller.signIn()
  }

  AlexApp.on("authentication:sign_in", () ->
    AlexApp.navigate("sign_in")
    API.signIn()
  )

  AlexApp.addInitializer(() ->
    new Authentication.Router
      controller: API
  )
)
