AlexApp.module("Navigator.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listNavigationElements: () ->
      links = AlexApp.request("navigator:links")
      navigationView = new List.Navigation({ collection: links })
  }
)
