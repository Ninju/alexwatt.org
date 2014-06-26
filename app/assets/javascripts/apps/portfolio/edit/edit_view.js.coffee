AlexApp.module "Portfolio.Edit", (Edit, AlexApp, Backbone, Marionette, $, _) ->
  Edit.PortfolioItem = AlexApp.Portfolio.Common.PortfolioItemForm.extend
    initialize: ->
      @title = "Edit Portfolio Item"
      @submitText = "Update"
