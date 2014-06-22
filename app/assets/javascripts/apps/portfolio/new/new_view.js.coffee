AlexApp.module("Portfolio.New", (New, AlexApp, Backbone, Marionette, $, _) ->
  New.PortfolioItem = AlexApp.Portfolio.Common.PortfolioItemForm.extend
    initialize: () ->
      this.title = "Create Portfolio Item"

    onShow: () ->
      $(".js-submit").text("Create")
)
