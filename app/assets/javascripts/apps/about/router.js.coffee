AlexApp.module("About", (About, AlexApp, Backbone, Marionette, $, _) ->
  About.Router = Marionette.AppRouter.extend({
    appRoutes: {
      "about" : "showAbout"
    }
  })

  API = {
    showAbout: () -> console.log("Show about page")
  }

  AlexApp.addInitializer(() ->
    new About.Router({
      controller: API
    })
  )
)
