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
            description: "3D First Person Shooter (FPS) game developed in the Unity 3D game engine."
            image_path: "games/fps_snapshot.png"
          }

          {
            id: 3
            name: "Lights Out"
            description: "3D First Person Shooter (FPS) game developed in the Unity 3D game engine."
            image_path: "games/fps_snapshot.png"
          }

          {
            id: 4
            name: "Newton's Cradle"
            description: "3D First Person Shooter (FPS) game developed in the Unity 3D game engine."
            image_path: "games/fps_snapshot.png"
          }
        ])

      Models.games
  }

  AlexApp.reqres.setHandler("games:games", API.getGames)
)
