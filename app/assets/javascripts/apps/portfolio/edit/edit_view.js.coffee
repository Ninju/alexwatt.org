AlexApp.module("Portfolio.Edit", (Edit, AlexApp, Backbone, Marionette, $, _) ->
  Edit.PortfolioItem = AlexApp.Portfolio.Common.PortfolioItemForm.extend
    initialize: () ->
      this.title = "Edit Portfolio Item"

    onShow: () ->
      $(".js-submit").text("Update")
)
