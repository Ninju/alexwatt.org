AlexApp.module("About", (About, AlexApp, Backbone, Marionette, $, _) ->
  About.Router = Marionette.AppRouter.extend({
    appRoutes: {
      "about" : "showAbout"
    }
  })

  API = {
    showAbout: () -> About.Controllers.Show.aboutPage()
  }

  AlexApp.on("about:show", () ->
    AlexApp.navigate("about")
    API.showAbout()
  )

  AlexApp.addInitializer(() ->
    new About.Router({
      controller: API
    })
  )
)
