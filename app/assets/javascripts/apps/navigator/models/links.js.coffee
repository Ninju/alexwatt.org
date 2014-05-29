AlexApp.module("Navigator.Models", (Models, AlexApp, Backbone, Marionette, $, _) ->
  Models.Link = Backbone.Model.extend()
  Models.Links = Backbone.Collection.extend({ model: Models.Link })

  API = {
    getLinks: () ->
      if Models.links == undefined
        Models.links = new Models.Links([
          { name: "github", url: "http://www.github.com/Ninju", trigger: "" },
          { name: "portfolio", url: "portfolio", trigger: "portfolio:show" },
          { name: "games", url: "games", trigger: "games:list" },
          { name: "about", url: "about", trigger: "about:show" }
        ])

      Models.links
  }

  AlexApp.reqres.setHandler("navigator:links", API.getLinks)
)
