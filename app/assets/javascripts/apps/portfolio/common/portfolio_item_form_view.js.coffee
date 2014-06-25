AlexApp.module("Portfolio.Common", (Common, AlexApp, Backbone, Marionette, $, _) ->
  Common.PortfolioItemForm = Marionette.ItemView.extend
    template: JST["apps/portfolio/common/portfolio_item_form_template"]

    triggers:
      "click .js-cancel": "dialog:close"

    events:
      "click .js-submit": "submitClicked"

    onShow: () ->
      dateInput = $(".date-input")
      dateInput.datepicker
        dateFormat: "yy-mm-dd"
        maxDate: new Date()

      dateInput.datepicker("setDate", this.model.get("project_start_date") or new Date())

    submitClicked: (e) ->
      e.preventDefault()
      this.trigger("form:submit", this)
)

