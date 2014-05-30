AlexApp.module("Navigator.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listNavigationElements: () ->
      links = AlexApp.request("navigator:links")
      navigationView = new List.NavigationLinks({ collection: links })

      AlexApp.navigationRegion.show(navigationView)
  }
)
