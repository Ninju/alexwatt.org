AlexApp.module("Navigator", (Navigator, AlexApp, Backbone, Marionette, $, _) ->
  API = {
    listNavigationElements: () ->
      Navigator.List.Controller.listNavigationElements()
  }

  AlexApp.commands.setHandler("set:active:page", (name) ->
    Navigator.List.Controller.setActivePage(name)
  )

  Navigator.on("start", () -> API.listNavigationElements())
)
