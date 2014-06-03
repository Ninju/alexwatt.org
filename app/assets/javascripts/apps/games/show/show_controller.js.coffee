AlexApp.module("Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller = {
    showGame: (id) ->
      games = AlexApp.request("games:games")
      game = games.find((game) -> game.get("id") == id)

      gameView = new Show.LightsOut({
        model: game
      })

      gameView.on("dialog:close", () -> console.log("Dialog closed"))

      AlexApp.modalRegion.show(gameView)
  }
)
