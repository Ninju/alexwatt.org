AlexApp.module("Portfolio.New", (New, AlexApp, Backbone, Marionette, $, _) ->
  New.PortfolioItem = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/portfolio/new/new_template")

    triggers: {
      "click .js-cancel": "dialog:close"
    }

    events: {
      "click .js-submit": "submitClicked"
    }

    submitClicked: (e) ->
      e.preventDefault()
      this.trigger("form:submit", this)
)
