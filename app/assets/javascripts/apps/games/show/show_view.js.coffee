AlexApp.module("Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Game = Marionette.ItemView.extend({
    template: AlexApp.getTemplate("apps/games/show/show_template")

    initialize: () ->
      this.title = this.model.get("name")
  })
)
