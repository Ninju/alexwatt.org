AlexApp.module "Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.LightsOut = Marionette.ItemView.extend
    template: JST["games/lights_out_template"]

    initialize: () ->
      @title = "Lights Out"

    onShow: () ->
      LightsOut.start()

  Show.AirHockey = Marionette.ItemView.extend
    id: "air_hockey"
    template: JST["games/air_hockey_template"]

    initialize: ->
      @title = "Air Hockey"

    ui:
      cocos2d: "#cocos2d-app"

    onShow: ->
      @ui.cocos2d.css
        width: 320
        height: 480
        margin: "20px auto"

      AirHockey.start()

      @trigger("set:dialog:position", my: "center", at: "center", of: window)

  Show.FuelLife = Marionette.ItemView.extend
    id: "fuel_life"
    template: JST["games/fuel_life_template"]

    initialize: ->
      @title = "Fuel Life"

    ui:
      unityPlayer: "unityPlayer"

    onShow: ->
      GetUnity = () -> @ui.unityPlayer if unityObject

      if unityObject
        unityObject.embedUnity("unityPlayer", "unity_games/FuelLife.unity3d", 1000, 700)

      @trigger("set:dialog:closeOnEscape", false)
      @trigger("set:dialog:position", my: "center", at: "center", of: window)

  Show.NewtonsCradle = Marionette.ItemView.extend
    id: "newtons_cradle"
    template: JST["games/newtons_cradle_template"]

    initialize: ->
      @title = "Newton's Cradle"

    onShow: ->
      NewtonsCradle.start()
