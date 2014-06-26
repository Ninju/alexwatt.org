AlexApp.module "Portfolio.New", (New, AlexApp, Backbone, Marionette, $, _) ->
  New.PortfolioItem = AlexApp.Portfolio.Common.PortfolioItemForm.extend
    initialize: ->
      @title = "Create Portfolio Item"
      @submitText = "Create"
