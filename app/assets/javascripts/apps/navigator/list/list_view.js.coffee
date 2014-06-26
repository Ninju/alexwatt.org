AlexApp.module "Navigator.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.NavigationLink = Marionette.ItemView.extend
    template: JST["navigator/list_item_template"]
    tagName: "li"

    events:
      "click a": "clickLink"

    clickLink: (e) ->
      if @model.isInternalAppLink()
        e.preventDefault()
        @trigger("navigate", this.model)

    onRender: ->
      if @model.selected
        @$el.addClass("active")

  List.NavigationLinks = Marionette.CollectionView.extend
    tagName: "ul"
    id: "navigation"
    className: "side-panel nav nav-pills nav-stacked"
    role: "navigation"
    itemView: List.NavigationLink
