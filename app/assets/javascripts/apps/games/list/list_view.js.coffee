AlexApp.module("Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Game = Marionette.ItemView.extend({
    tagName: "li"
    className: "section"
    template: JST["apps/games/list/list_item_template"]

    events: {
      "click a.js-show": "clickedGame"
    }

    "clickedGame": (e) ->
      e.preventDefault()
      this.trigger("games:show", this.model)
  })

  List.Games = Marionette.CompositeView.extend({
    itemView: List.Game
    itemViewContainer: "ul.section-list"
    template: JST["apps/games/list/list_template"]
  })
)
