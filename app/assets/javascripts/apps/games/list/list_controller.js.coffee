AlexApp.module("Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listGames: () ->
      games = AlexApp.request("games:games")
      listView = new List.Games({
        collection: games
      })

      AlexApp.contentRegion.show(listView)
  }
)
