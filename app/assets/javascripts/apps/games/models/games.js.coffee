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
            description: "First Person Shooter in Unity 3D"
            paragraphs:
              [
                "Fuel Life is a fast paced First Person Shooter created using the Unity3D game engine."
                "It has exploding barrels, pickup items, sentry guns, ragdoll physics, an abundance of rocket launchers, and lots of other cool things."
                "Collect all of the fuel and escape the hostile robot-infested environment on your spaceship.  Play now! (Press the right mouse button at the white screen when the game loads)"
              ]
            image_path: "games/fps_snapshot.png"
          }

          {
            id: 2
            name: "Air Hockey"
            description: "Two-player Air Hockey in Cocos2d Javascript."
            paragraphs:
              [
                "Fun two-player simulation of the classic Air Hockey game you may have seen at your local arcade."
                "Drag either paddle into the puck to watch it glide around the table, using the Box2d physics engine to provide a close representation of a real low-friction air hockey table."
                "A player's paddle may not cross the center line and into their opponents territory. The goal is to hit the puck into your opponents goal, whilst defending your own goal with the paddle provided."
              ]
            image_path: "games/air_hockey_snapshot.png"
          }

          {
            id: 3
            name: "Lights Out"
            description: "Simple addictive puzzle game written in jQuery."
            paragraphs:
              [
                "Lights Out is a classic puzzle game; originally an electronic game released by Tiger Toys in 1995."
                "You must turn off all the lights in a 5x5 grid to win. The starting position is randomly generated at the beginning of play, and you can start again by pressing 'Reset'."
                "When a light is pressed it's state will change from 'off' -> 'on', or 'on' -> 'off'. The state of its' non-diagonal neighbours will also change in the same way."
                "Have a go at trying to turn off all the lights!"
              ]
            image_path: "games/lights_out.png"
          }

          {
            id: 4
            name: "Newton's Cradle"
            description: "Physics simulation of Newton's Cradle."
            paragraphs: [
              "Newton's cradle, named after Sir Isaac Newton, is a device that demonstrates conservation of momentum and energy via a series of swinging spheres. When one on the end is lifted and released, it strikes the stationary spheres; a force is transmitted through the stationary spheres and pushes the last one upward. The device is also known as Newton's balls or 'Executive Ball Clicker' (Wikipedia: http://en.wikipedia.org/wiki/Newton's_cradle)."
              "Drag balls with the mouse to 'play'. Written in Javascript using the Cocos2d Javascript framework."
            ]
            image_path: "games/newtons_cradle.png"
          }
        ])

      Models.games
  }

  AlexApp.reqres.setHandler("games:games", API.getGames)
)
