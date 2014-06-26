AlexApp.module "About", (About, AlexApp, Backbone, Marionette, $, _) ->
  About.Router = Marionette.AppRouter.extend
    appRoutes:
      "about" : "showAbout"

  API =
    showAbout: ->
      AlexApp.execute("set:active:page", "about")
      About.Show.Controller.showAbout()

  AlexApp.on "about:show", () ->
    AlexApp.navigate("about")
    API.showAbout()

  AlexApp.addInitializer ->
    new About.Router
      controller: API
