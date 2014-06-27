AlexApp.module "About.Show", (Show, AlexApp, Backbone, Marionette, $, _) ->
  Show.Controller =
    showAbout: ->
      aboutPageView = new Show.AboutPage
        model: new Backbone.Model
          language_stats: [
            { language_name: "Javascript", year_started: 2001, description: "Javascript was the first programming language I learnt" }
            { language_name: "Ruby", year_started: 2005, description: "I met Ruby in 2005 and it wasn't until the next year that I discovered Rails." }
            { language_name: "Haskell", year_started: 2007, description: "Possibly my favourite programming language." }
            { language_name: "OCaml", year_started: 2011, description: "Before using it in an important production app, I had never written a single line of OCaml before!" }
            { language_name: "Lua", year_started: 2008, description: "Often my language of choice when writing mobile apps." }
            { language_name: "Objective-C", year_started: 2007, description: "Slightly less cool than Smalltalk, but I like this language a lot." }
            { language_name: "Scheme", year_started: 2007, description: "I still remember the SICP lectures from MIT." }
            { language_name: "Python", year_started: 2004, description: "'Diveintopython' introduced me to what I believed at the time to be my first 'real programming language'." }
          ]

      AlexApp.contentRegion.show(aboutPageView)
