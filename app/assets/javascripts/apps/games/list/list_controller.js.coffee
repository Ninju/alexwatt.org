AlexApp.module("Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listGames: () ->
      listView = new List.Games()
      AlexApp.contentRegion.show(listView)
  }
)
