AlexApp.module "Shared.Regions", (Regions, AlexApp, Backbone, Marionette, $, _) ->
  Regions.Modal = Marionette.Region.extend
    onShow: (view) ->
      @listenTo(view, "dialog:close", @closeDialog)
      @listenTo(view, "set:dialog:position", @setDialogPosition)
      @listenTo(view, "set:dialog:closeOnEscape", @setDialogCloseOnEscape)

      @$el.dialog
        modal: true
        title: view.title
        width: view.width or "auto"
        draggable: view.draggable or false
        height: view.height or "auto"
        closeOnEscape: view.closeOnEscape or true

        position:
          my: "center"
          at: "center"
          of: window

        close: -> @closeDialog

    closeDialog: ->
      @stopListening()
      @close()
      @$el.dialog("destroy")

    setDialogPosition: (position) ->
      @$el.dialog("option", "position", position)

    setDialogCloseOnEscape: (bool) ->
      @$el.dialog("option", "closeOnEscape", bool)
