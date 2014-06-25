AlexApp.module("Portfolio.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.PortfolioItem = Backbone.Model.extend
    urlRoot: "/portfolio_items"

  Models.Portfolio     = Backbone.Collection.extend
    url: "/portfolio_items"
    model: Models.PortfolioItem

  API = {
    getPortfolioItems: () ->
      items = new Models.Portfolio()
      defer = $.Deferred()
      items.fetch
        success: (data, response) -> defer.resolve(data, response)
        error:   (data, response) -> defer.resolve(undefined, response)

      defer.promise()
  }

  AlexApp.reqres.setHandler("portfolio:items", API.getPortfolioItems)
)
