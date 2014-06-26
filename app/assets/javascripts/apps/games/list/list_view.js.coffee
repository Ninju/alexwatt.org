AlexApp.module "Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Game = Marionette.ItemView.extend
    template: JST["games/list_item_template"]
    tagName: "li"
    className: "section"

    triggers:
      "click a.js-show": "games:show"

  List.Games = Marionette.CompositeView.extend
    template: JST["games/list_template"]
    itemView: List.Game
    itemViewContainer: "ul.section-list"
