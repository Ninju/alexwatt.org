AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listPortfolio: () ->
      portfolioItems = AlexApp.request("portfolio:items")

      portfolioView = new List.Portfolio
        collection: portfolioItems

      AlexApp.contentRegion.show(portfolioView)
  }
)
