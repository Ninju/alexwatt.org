AlexApp.module("Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller = {
    showGame: (id) ->
      gameView = new Show.Game()
      AlexApp.modalRegion.show(gameView)
  }
)
