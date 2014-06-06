AlexApp.module("Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller = {
    listPortfolio: () ->
      fetchingPortfolioItems = AlexApp.request("portfolio:items")

      $.when(fetchingPortfolioItems).done((portfolioItems) ->
        if portfolioItems
          portfolioView = new List.Portfolio
            collection: portfolioItems

          portfolioView.on("portfolio:item:new", () ->
            newPortfolioItem     = new AlexApp.Portfolio.Models.PortfolioItem()
            newPortfolioItemView = new AlexApp.Portfolio.New.PortfolioItem
              model: newPortfolioItem

            newPortfolioItemView.title = "Add new portfolio item"

            AlexApp.modalRegion.show(newPortfolioItemView)

            newPortfolioItemView.on("form:submit", (data) ->
              newPortfolioItem.set(data)
              if newPortfolioItem.save()
                console.log(newPortfolioItem)
                newPortfolioItemView.trigger("dialog:close")
                AlexApp.trigger("portfolio:list")
              else
                console.log("There was a problem")
            )
          )

          AlexApp.contentRegion.show(portfolioView)
        else
          console.log("No items found.")
      )
  }
)
