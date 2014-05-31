AlexApp.module("Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listGames: () ->
      console.log("Listing games from controller");
  }
)
