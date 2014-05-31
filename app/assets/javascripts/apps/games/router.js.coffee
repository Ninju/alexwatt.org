AlexApp.module("Games", (Games, AlexApp, Backbone, Marionette, $, _) ->
  Games.Router = Marionette.AppRouter.extend({
    appRoutes: {
      "games": "listGames"
    }
  })

  API = {
    listGames: () ->
      AlexApp.execute("set:active:page", "games")
  }

  AlexApp.on("games:list", () ->
    AlexApp.navigate("games")
    API.listGames()
  )

  AlexApp.addInitializer(() ->
    new Games.Router({
      controller: API
    })
  )
)
