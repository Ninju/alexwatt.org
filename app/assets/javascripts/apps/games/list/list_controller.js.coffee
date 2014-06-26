AlexApp.module "Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller =
    listGames: ->
      games = AlexApp.request("games:games")

      listView = new List.Games
        collection: games

      listView.on "itemview:games:show", (childView) ->
        AlexApp.trigger("games:show", childView.model.get("id"))

      AlexApp.contentRegion.show(listView)
