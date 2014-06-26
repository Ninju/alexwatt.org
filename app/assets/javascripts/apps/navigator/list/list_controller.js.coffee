AlexApp.module "Navigator.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller =
    listNavigationElements: ->
      links = AlexApp.request("navigator:links")
      navigationView = new List.NavigationLinks
        collection: links

      navigationView.on "itemview:navigate", (childView, model) ->
        trigger = model.get("navigationTrigger")
        AlexApp.trigger(trigger)

      AlexApp.navigationRegion.show(navigationView)

    setActivePage: (name) ->
      links = AlexApp.request("navigator:links")
      selected = links.find (link) -> link.get("name") == name
      selected.select()
      links.trigger("reset")
