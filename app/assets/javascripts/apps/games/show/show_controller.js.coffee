AlexApp.module "Games.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller =
    showGame: (id) ->
      games = AlexApp.request("games:games")
      game = games.find (game) -> game.get("id") == id

      gameView = @getGameView(game)

      AlexApp.modalRegion.show(gameView)


    getGameView: (game) ->
      views =
        1: Show.FuelLife
        2: Show.AirHockey
        3: Show.LightsOut
        4: Show.NewtonsCradle

      new (views[game.get("id")] or Show.Game)
