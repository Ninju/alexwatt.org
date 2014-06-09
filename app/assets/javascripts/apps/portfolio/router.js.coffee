AlexApp.module("Portfolio", (Portfolio, AlexApp, Backbone, Marionette, $, _) ->
  Portfolio.Router = Marionette.AppRouter.extend
    appRoutes:
      "portfolio": "listPortfolio"

  API = {
    listPortfolio: () ->
      AlexApp.execute("set:active:page", "portfolio")
      Portfolio.List.Controller.listPortfolio()
  }

  AlexApp.on("portfolio:list", () ->
    AlexApp.navigate("portfolio")
    API.listPortfolio()
  )

  AlexApp.addInitializer(() ->
    new Portfolio.Router
      controller: API
  )
)
