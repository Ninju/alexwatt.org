AlexApp.module "Navigator.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.Link = Backbone.Model.extend
    initialize: ->
      selectable = new Backbone.Picky.Selectable(@)
      _.extend(@, selectable)

      @set("url_path", @initializeUrlPath())

    initializeUrlPath: ->
      if @isInternalAppLink()
        "#" + @get("url")
      else
        @get("url")

    hasNavigationTrigger: ->
      navigationTrigger = @get("navigationTrigger")
      navigationTrigger && navigationTrigger != ""

    isInternalAppLink: -> @hasNavigationTrigger()

  Models.Links = Backbone.Collection.extend
    model: Models.Link

    initialize: ->
      singleSelect = new Backbone.Picky.SingleSelect(@)
      _.extend(@, singleSelect)

  API =
    getLinks: ->
      if Models.links == undefined
        Models.links = new Models.Links [
          { name: "about", url: "about", navigationTrigger: "about:show" }
          { name: "games", url: "games", navigationTrigger: "games:list" }
          { name: "portfolio", url: "portfolio", navigationTrigger: "portfolio:list" }
          { name: "github", url: "http://www.github.com/Ninju" }
          { name: "linkedin", url: "https://linkedin.com/in/alex-watt-4572319b" }
        ]

      Models.links

  AlexApp.reqres.setHandler("navigator:links", API.getLinks)
