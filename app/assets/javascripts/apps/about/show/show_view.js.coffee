AlexApp.module "About.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.AboutPage = Marionette.ItemView.extend
    template: JST["about/show_template"]

    ui:
      progressBars: ".progress"

    onShow: ->
      @ui.progressBars.tooltip
        viewport: "body"
        placement: "top"
