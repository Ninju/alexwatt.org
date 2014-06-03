AlexApp.module("Games.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.Game  = Backbone.Model.extend()
  Models.Games = Backbone.Collection.extend({
    model: Models.Game
  })

  API = {
    getGames: () ->
      if Models.games == undefined
        Models.games = new Models.Games([
          {
            id: 1
            name: "Fuel Life"
            description: "3D First Person Shooter (FPS) game developed in the Unity 3D game engine."
            image_path: "games/fps_snapshot.png"
          }

          {
            id: 2
            name: "Air Hockey"
            description: "2-player Cocos2d javascript air hockey game using the Box2d physics engine."
            image_path: "games/air_hockey_snapshot.png"
          }

          {
            id: 3
            name: "Lights Out"
            description: "Simple addictive puzzle game written in jQuery."
            image_path: "games/lights_out.png"
            onShow: () -> LightsOut.start()
            template: "apps/games/show/show_template"
          }

          {
            id: 4
            name: "Newton's Cradle"
            description: "Physics simulation of well-known Newton's Cradle contraption using Box2d physics and Cocos2d javascript framework."
            image_path: "games/newtons_cradle.png"
          }
        ])

      Models.games
  }

  AlexApp.reqres.setHandler("games:games", API.getGames)
)
