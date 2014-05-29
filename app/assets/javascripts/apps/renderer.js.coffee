AlexApp.templateHandler = (path) -> JST[path]

AlexApp.getTemplate = (path) ->
  if (path.match("apps/"))
    return this.templateHandler(path)

  pathPieces = path.split("/")
  appName = pathPieces[0]
  restOfPath = pathPieces.slice(1, pathPieces.length).join("/")

  this.templateHandler("apps/" + appName + "/templates/" + restOfPath)
