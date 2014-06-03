AlexApp.module("Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.LightsOut = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/games/show/lights_out_template")

    initialize: () ->
      @title = "Lights Out"

    onShow: () ->
      LightsOut.start()

  Show.AirHockey = Marionette.ItemView.extend
    id: "air_hockey"
    template: AlexApp.getTemplate("apps/games/show/air_hockey_template")

    initialize: () ->
      @title = "Air Hockey"

    onShow: () ->
      $("#cocos2d-app").css
        width: 320
        height: 480
        margin: "20px auto"

      AirHockey.start()

      this.trigger("set:dialog:position", { my: "center", at: "center", of: window })



  Show.FuelLife = Marionette.ItemView.extend

  Show.NewtonsCradle = Marionette.ItemView.extend
    id: "newtons_cradle"
    template: AlexApp.getTemplate("apps/games/show/newtons_cradle_template")

    initialize: () ->
      @title = "Newton's Cradle"

    onShow: () ->
      NewtonsCradle.start()
)
