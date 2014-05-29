AlexApp.module("Navigator", (Navigator, AlexApp, Backbone, Marionette, $, _) ->
  API = {
    listNavigationElements: () ->
      Navigator.List.Controller.listNavigationElements()
  }

  Navigator.on("start", () -> API.listNavigationElements())
)
