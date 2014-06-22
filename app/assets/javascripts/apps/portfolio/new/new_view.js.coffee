AlexApp.module("Portfolio.New", (New, AlexApp, Backbone, Marionette, $, _) ->
  New.PortfolioItem = AlexApp.Portfolio.Common.PortfolioItemForm.extend
    onShow: () ->
      $(".js-submit").text("Create")
)
