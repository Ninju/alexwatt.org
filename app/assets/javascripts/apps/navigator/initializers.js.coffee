AlexApp.module "Navigator", (Navigator, AlexApp, Backbone, Marionette, $, _) ->

  AlexApp.commands.setHandler "set:active:page", (name) ->
    Navigator.List.Controller.setActivePage(name)

  Navigator.on "start", () -> Navigator.List.Controller.listNavigationElements()
