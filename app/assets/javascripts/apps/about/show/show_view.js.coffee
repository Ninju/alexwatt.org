AlexApp.module "About.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.AboutPage = Marionette.ItemView.extend
    template: JST["about/show_template"]

    ui:
      tooltips: "[data-toggle='tooltip']"

    onShow: ->
      ###
      @ui.tooltips.tooltip
        placement: "top"
      ###
