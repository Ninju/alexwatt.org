AlexApp.module "About.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller =
    showAbout: ->
      aboutPageView = new Show.AboutPage
        model: new Backbone.Model
          language_stats: [
            { language_name: "Javascript", year_started: 2001 }
            { language_name: "Ruby", year_started: 2005 }
            { language_name: "Haskell", year_started: 2007 }
            { language_name: "OCaml", year_started: 2011 }
            { language_name: "Lua", year_started: 2008 }
            { language_name: "Objective-C", year_started: 2007 }
            { language_name: "Scheme", year_started: 2007 }
            { language_name: "Python", year_started: 2004 }
          ]

      AlexApp.contentRegion.show(aboutPageView)
