AlexApp.module "Portfolio.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.Controller =
    listPortfolio: ->
      fetchingPortfolioItems = AlexApp.request("portfolio:items")

      submitForm = (viewController, options) ->
        options = options or {}
        view = viewController.view

        form = view.ui.form
        form.ajaxSubmit
          type: options.method or "POST"

          success: (response) ->
            view.trigger("dialog:close")
            AlexApp.trigger("portfolio:list")

      $.when(fetchingPortfolioItems).done (portfolioItems, response) ->
        if response.status == 401
          AlexApp.trigger("authentication:sign_in")
          return

        if portfolioItems == undefined
          portfolioItems = AlexApp.Portfolio.Models.Portfolio []

        portfolioView = new List.Portfolio
          collection: portfolioItems

        portfolioView.on("itemview:portfolio:item:delete", (childView, args) -> args.model.destroy())
        portfolioView.on "itemview:portfolio:item:edit", (childView, args) ->
          editPortfolioItemView = new AlexApp.Portfolio.Edit.PortfolioItem
            model: args.model

          AlexApp.modalRegion.show(editPortfolioItemView)

          editPortfolioItemView.on "form:submit", (arg) -> submitForm(arg, method: "PUT")


        portfolioView.on "portfolio:item:new", () ->
          newPortfolioItem     = new AlexApp.Portfolio.Models.PortfolioItem()
          newPortfolioItemView = new AlexApp.Portfolio.New.PortfolioItem
            model: newPortfolioItem

          AlexApp.modalRegion.show(newPortfolioItemView)

          newPortfolioItemView.on("form:submit", submitForm)

        AlexApp.contentRegion.show(portfolioView)
