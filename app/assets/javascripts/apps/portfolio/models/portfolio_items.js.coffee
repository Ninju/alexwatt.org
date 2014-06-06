AlexApp.module("Portfolio.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.PortfolioItem = Backbone.Model.extend()

  Models.Portfolio     = Backbone.Collection.extend
    url: "/portfolio_items"
    model: Models.PortfolioItem

  API = {
    getPortfolioItems: () ->
      items = new Models.Portfolio()
      defer = $.Deferred()
      items.fetch
        success: (data) -> defer.resolve(data)
        error: (data) -> defer.resolve(undefined)

      defer.promise()
  }

  AlexApp.reqres.setHandler("portfolio:items", API.getPortfolioItems)
)
