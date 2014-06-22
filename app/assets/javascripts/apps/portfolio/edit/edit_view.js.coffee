AlexApp.module("Portfolio.Edit", (Edit, AlexApp, Backbone, Marionette, $, _) ->
  Edit.PortfolioItem = AlexApp.Portfolio.Common.PortfolioItemForm.extend
    onShow: () ->
      $(".js-submit").text("Update")
)
