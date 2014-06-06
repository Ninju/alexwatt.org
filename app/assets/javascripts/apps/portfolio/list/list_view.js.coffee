AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.PortfolioItem = Marionette.ItemView.extend
    tagName: "li"
    className: "section"
    template: AlexApp.getTemplate("apps/portfolio/list/list_item_template")

  List.Portfolio = Marionette.CompositeView.extend
    itemView: List.PortfolioItem
    itemViewContainer: "ul.section-list"
    template: AlexApp.getTemplate("apps/portfolio/list/list_template")

    triggers: {
      "click a.js-new": "portfolio:item:new"
    }
)
