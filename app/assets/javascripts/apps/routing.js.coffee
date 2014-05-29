AlexApp.navigate = (route, options) ->
  options = options || {}
  Backbone.history.navigate(route, options)

AlexApp.getCurrentRoute = () -> Backbone.history.fragment

AlexApp.on("initialize:after", () ->
  if Backbone.history
    Backbone.history.start()

    if this.getCurrentRoute() == ""
      this.navigate("about")
      AlexApp.trigger("about:show")
)
