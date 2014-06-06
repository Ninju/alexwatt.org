AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listPortfolio: () ->
      fetchingPortfolioItems = AlexApp.request("portfolio:items")

      $.when(fetchingPortfolioItems).done((portfolioItems) ->
        if portfolioItems
          portfolioView = new List.Portfolio
            collection: portfolioItems

          AlexApp.contentRegion.show(portfolioView)
        else
          console.log("No items found.")
      )
  }
)
