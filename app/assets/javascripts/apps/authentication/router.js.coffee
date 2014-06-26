AlexApp.module "Authentication", (Authentication, AlexApp, Backbone, Marionette, $, _) ->
  AlexApp.on "authentication:sign_in", () -> Authentication.SignIn.Controller.signIn()
