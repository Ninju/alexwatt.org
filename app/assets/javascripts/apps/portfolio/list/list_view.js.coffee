AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Portfolio = Marionette.ItemView.extend({
    tagName: "ul"
    className: "section-list"
    template: AlexApp.getTemplate("apps/portfolio/list/list_template")
  })
)
