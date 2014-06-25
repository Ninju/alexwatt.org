AlexApp.module("About.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.AboutPage = Marionette.ItemView.extend
    template: JST["apps/about/show/show_template"]
)
