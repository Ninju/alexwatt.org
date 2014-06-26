AlexApp.navigate = (route, options) ->
  options = options or {}
  Backbone.history.navigate(route, options)

AlexApp.getCurrentRoute = () -> Backbone.history.fragment

AlexApp.on "initialize:after", ->
  if Backbone.history
    Backbone.history.start()

    if @getCurrentRoute() == ""
      @navigate("about")
      @trigger("about:show")
