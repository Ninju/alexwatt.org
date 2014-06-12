AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Empty = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/portfolio/list/empty_template")

  List.PortfolioItem = Marionette.ItemView.extend
    tagName: "li"
    className: "section"
    template: AlexApp.getTemplate("apps/portfolio/list/list_item_template")

  List.Portfolio = Marionette.CompositeView.extend
    itemView: List.PortfolioItem
    itemViewContainer: "ul.section-list"
    template: AlexApp.getTemplate("apps/portfolio/list/list_template")
    emptyView: List.Empty

    triggers: {
      "click a.js-new": "portfolio:item:new"
    }
)
