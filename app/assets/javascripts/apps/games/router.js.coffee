AlexApp.module("Games", (Games, AlexApp, Backbone, Marionette, $, _) ->
  Games.Router = Marionette.AppRouter.extend({
    appRoutes: {
      "games": "listGames"
      "games/:id": "showGame"
    }
  })

  API = {
    listGames: () ->
      AlexApp.execute("set:active:page", "games")
      Games.List.Controller.listGames()

    showGame: (id) ->
      AlexApp.execute("set:active:page", "games")
      Games.Show.Controller.showGame(id)
  }

  AlexApp.on("games:list", () ->
    AlexApp.navigate("games")
    API.listGames()
  )

  AlexApp.on("games:show", (id) ->
    AlexApp.navigate("games")
    API.showGame(id)
  )

  AlexApp.addInitializer(() ->
    new Games.Router({
      controller: API
    })
  )
)
