AlexApp.module("About.Views", (Views, AlexApp, Backbone, Marionette, $, _) ->
  Views.AboutPage = Marionette.ItemView.extend({
    template: AlexApp.getTemplate("about/about_page")
  })
)
