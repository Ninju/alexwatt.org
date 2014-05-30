AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Portfolio = Marionette.ItemView.extend({
    template: AlexApp.getTemplate("apps/portfolio/list/list_template")
  })
)
