AlexApp.module("Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller = {
    showGame: (id) ->
      games = AlexApp.request("games:games")
      game = games.find((game) -> game.get("id") == id)

      gameView = new Show.Game({
        model: game
      })

      AlexApp.modalRegion.show(gameView)
  }
)
