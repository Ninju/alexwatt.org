AlexApp.module("About.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller = {
    showAbout: () ->
      aboutPageView = new Show.AboutPage()
      AlexApp.contentRegion.show(aboutPageView)
  }
)
