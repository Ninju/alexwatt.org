AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Empty = Marionette.ItemView.extend
    template: JST["apps/portfolio/list/empty_template"]

  List.PortfolioItem = Marionette.ItemView.extend
    tagName: "li"
    className: "section portfolio-item"
    template: JST["apps/portfolio/list/list_item_template"]

    triggers:
      "click .js-delete": "portfolio:item:delete"
      "click .js-edit"  : "portfolio:item:edit"

  List.Portfolio = Marionette.CompositeView.extend
    itemView: List.PortfolioItem
    itemViewContainer: "ul.section-list"
    template: JST["apps/portfolio/list/list_template"]
    emptyView: List.Empty

    triggers:
      "click .js-new": "portfolio:item:new"
)
