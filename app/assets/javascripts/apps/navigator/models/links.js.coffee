AlexApp.module("Navigator.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.Link = Backbone.Model.extend({
    initialize: () ->
      selectable = new Backbone.Picky.Selectable(this)
      _.extend(this, selectable)

      this.set("url_path", this.initializeUrlPath())

    initializeUrlPath: () ->
      if this.isInternalAppLink()
        "#" + this.get("url")
      else
        this.get("url")

    hasNavigationTrigger: () ->
      navigationTrigger = this.get("navigationTrigger")
      navigationTrigger && navigationTrigger != ""

    isInternalAppLink: () ->
      this.hasNavigationTrigger()
  })

  Models.Links = Backbone.Collection.extend({
    model: Models.Link

    initialize: () ->
      singleSelect = new Backbone.Picky.SingleSelect(this)
      _.extend(this, singleSelect)
  })

  API = {
    getLinks: () ->
      if Models.links == undefined
        Models.links = new Models.Links([
          { name: "github", url: "http://www.github.com/Ninju" },
          { name: "portfolio", url: "portfolio", navigationTrigger: "portfolio:list" },
          { name: "games", url: "games", navigationTrigger: "games:list" },
          { name: "about", url: "about", navigationTrigger: "about:show" }
        ])

      Models.links
  }

  AlexApp.reqres.setHandler("navigator:links", API.getLinks)
)
