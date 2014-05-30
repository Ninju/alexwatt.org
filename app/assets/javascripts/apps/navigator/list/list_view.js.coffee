AlexApp.module("Navigator.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.NavigationLink = Marionette.ItemView.extend({
    tagName: "li"
    template: AlexApp.getTemplate("apps/navigator/list/list_item_template")
  })

  List.NavigationLinks = Marionette.CollectionView.extend({
    tagName: "ul"
    id: "navigation"
    className: "side-panel nav nav-pills nav-stacked"
    role: "navigation"
    itemView: List.NavigationLink
  })
)
