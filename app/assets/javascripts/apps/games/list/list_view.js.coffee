AlexApp.module("Games.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Games = Marionette.ItemView.extend({
    tagName: "ul"
    className: "section-list"
    template: AlexApp.getTemplate("apps/games/list/list_template")
  })
)
