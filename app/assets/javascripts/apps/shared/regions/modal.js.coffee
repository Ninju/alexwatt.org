AlexApp.module("Shared.Regions", (Regions, AlexApp, Backbone, Marionette, $, _) ->
  Regions.Modal = Marionette.Region.extend({
    onShow: (view) ->
      this.listenTo(view, "dialog:close", this.closeDialog)

      self = this
      this.$el.dialog({
        modal: true
        title: view.title
        width: view.width || "auto"
        draggable: view.draggable || false
        height: view.height || "auto"

        buttons: [
          { text: "OK", click: () -> LightsOut.start() }
        ]

        position: {
          my: "center"
          at: "center"
          of: window
        }

        close: (e, ui) ->
          self.closeDialog()
      })

    closeDialog: () ->
      this.stopListening()
      this.close()
      this.$el.dialog("destroy")
  })
)
