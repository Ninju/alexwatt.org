AlexApp.module("Authentication", (Authentication, AlexApp, Backbone, Marionette, $, _) ->
  Authentication.Router = Marionette.AppRouter.extend
    appRoutes: {
      "sign_in": "signIn"
    }

  API = {
    signIn: () ->
      console.log("Signing in")
  }

  AlexApp.on("authentication:sign_in", () ->
    AlexApp.navigate("sign_in")
    console.log("handler reached")
  )

  AlexApp.addInitializer(() ->
    new Authentication.Router
      controller: API
  )
)
