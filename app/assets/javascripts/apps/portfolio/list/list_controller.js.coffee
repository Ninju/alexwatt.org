AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listPortfolio: () ->
      fetchingPortfolioItems = AlexApp.request("portfolio:items")

      $.when(fetchingPortfolioItems).done((portfolioItems, response) ->
        if response.status == 401
          AlexApp.trigger("authentication:sign_in")
          return

        if portfolioItems == undefined
          portfolioItems = AlexApp.Portfolio.Models.Portfolio []

        portfolioView = new List.Portfolio
          collection: portfolioItems

        portfolioView.on("portfolio:item:new", () ->
          newPortfolioItem     = new AlexApp.Portfolio.Models.PortfolioItem()
          newPortfolioItemView = new AlexApp.Portfolio.New.PortfolioItem
            model: newPortfolioItem

          newPortfolioItemView.title = "Add new portfolio item"

          AlexApp.modalRegion.show(newPortfolioItemView)

          newPortfolioItemView.on("form:submit", (view) ->
            form = view.$el.find("form")
            form.ajaxSubmit
              data:
                user_token: AlexApp.user_token
                user_email: AlexApp.user_email
              success: (response) ->
                newPortfolioItemView.trigger("dialog:close")
                AlexApp.trigger("portfolio:list")
          )
        )

        AlexApp.contentRegion.show(portfolioView)
      )
  }
)
