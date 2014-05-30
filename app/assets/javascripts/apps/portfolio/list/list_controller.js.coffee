AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listPortfolio: () ->
      portfolioView = new List.Portfolio()
      AlexApp.contentRegion.show(portfolioView)
  }
)
