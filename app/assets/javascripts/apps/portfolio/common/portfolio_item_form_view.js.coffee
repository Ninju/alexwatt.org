AlexApp.module("Portfolio.Common", (Common, AlexApp, Backbone, Marionette, $, _) ->
  Common.PortfolioItemForm = Marionette.ItemView.extend
    template: AlexApp.getTemplate("apps/portfolio/common/portfolio_item_form_template")

    triggers:
      "click .js-cancel": "dialog:close"

    events:
      "click .js-submit": "submitClicked"

    onShow: () ->
      $(".date-input").datepicker
        dateFormat: "yy-mm-dd"

    submitClicked: (e) ->
      e.preventDefault()
      this.trigger("form:submit", this)
)

