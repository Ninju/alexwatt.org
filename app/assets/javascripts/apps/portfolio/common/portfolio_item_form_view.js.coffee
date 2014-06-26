AlexApp.module "Portfolio.Common", (Common, AlexApp, Backbone, Marionette, $, _) ->
  Common.PortfolioItemForm = Marionette.ItemView.extend
    template: JST["portfolio/portfolio_item_form_template"]

    triggers:
      "click .js-cancel": "dialog:close"
      "click .js-submit": "form:submit"

    ui:
      dateInput: ".date-input"
      form: "form"
      submitButton: ".js-submit"

    onShow: ->
      dateInput = @ui.dateInput
      dateInput.datepicker
        dateFormat: "yy-mm-dd"
        maxDate: new Date()

      dateInput.datepicker("setDate", @model.get("project_start_date") or new Date())

      @ui.submitButton.text(@submitText or "Submit")
