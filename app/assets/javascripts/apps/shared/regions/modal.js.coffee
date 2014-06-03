AlexApp.module("Shared.Regions", (Regions, AlexApp, Backbone, Marionette, $, _) ->
  Regions.Modal = Marionette.Region.extend({
    onShow: (view) ->
      this.listenTo(view, "dialog:close", this.closeDialog)
      this.listenTo(view, "set:dialog:position", this.setDialogPosition)

      self = this
      this.$el.dialog({
        modal: true
        title: view.title
        width: view.width || "auto"
        draggable: view.draggable || false
        height: view.height || "auto"

        position: {
          my: "center"
          at: "center"
          of: window
        }

        close: (e, ui) ->
          self.closeDialog()
      })

      view.setDialog && view.setDialog(this.$el.dialog)

    closeDialog: () ->
      this.stopListening()
      this.close()
      this.$el.dialog("destroy")

    setDialogPosition: (position) ->
      this.$el.dialog("option", "position", position)
  })
)
