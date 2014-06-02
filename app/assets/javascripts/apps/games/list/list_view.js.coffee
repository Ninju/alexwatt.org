AlexApp.module("Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Game = Marionette.ItemView.extend({
    tagName: "li"
    className: "section"
    template: AlexApp.getTemplate("apps/games/list/list_item_template")
  })

  List.Games = Marionette.CompositeView.extend({
    itemView: List.Game
    itemViewContainer: "ul.section-list"
    template: AlexApp.getTemplate("apps/games/list/list_template")
  })
)
