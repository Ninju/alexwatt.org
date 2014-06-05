AlexApp.module("Portfolio.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.PortfolioItem = Backbone.Model.extend
  Models.Portfolio     = Backbone.Collection.extend
    model: Models.PortfolioItem

  API = {
    getPortfolioItems: () ->
      new Models.Portfolio()
  }

  AlexApp.reqres.setHandler("portfolio:items", API.getPortfolioItems)
)
