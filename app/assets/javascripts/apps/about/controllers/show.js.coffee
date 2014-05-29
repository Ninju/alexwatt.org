AlexApp.module("About.Controllers", (Controllers, AlexApp, Backbone, Marionette, $, _) ->
  Controllers.Show = {
    aboutPage: () ->
      aboutPageView = new AlexApp.About.Views.AboutPage()
      AlexApp.contentRegion.show(aboutPageView)
  }
)
