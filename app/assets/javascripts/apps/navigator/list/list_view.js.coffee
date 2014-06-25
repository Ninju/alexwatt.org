AlexApp.module("Navigator.List", (List, AlexApp, Backbone, Marionette, $, _) ->
  List.NavigationLink = Marionette.ItemView.extend({
    tagName: "li"
    template: JST["apps/navigator/list/list_item_template"]

    events: {
      "click a": "clickLink"
    }

    clickLink: (e) ->
      if this.model.isInternalAppLink()
        e.preventDefault()
        this.trigger("navigate", this.model)

    onRender: () ->
      if this.model.selected
        this.$el.addClass("active")
  })

  List.NavigationLinks = Marionette.CollectionView.extend({
    tagName: "ul"
    id: "navigation"
    className: "side-panel nav nav-pills nav-stacked"
    role: "navigation"
    itemView: List.NavigationLink
  })
)
