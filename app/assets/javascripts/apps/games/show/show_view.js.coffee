AlexApp.module("Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.LightsOut = Marionette.ItemView.extend({
    template: AlexApp.getTemplate("apps/games/show/lights_out_template")

    initialize: () ->
      this.title = @model.get("name")
      this.template = AlexApp.getTemplate(@model.get("template"))

    onShow: () ->
      LightsOut.start()
  })

  Show.AirHockey = Marionette.ItemView.extend({
  })
)
