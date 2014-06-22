_sync = Backbone.sync
Backbone.sync = (method, model, options) ->
  if AlexApp.user_token and AlexApp.user_email
    auth_params =
      user_token: AlexApp.user_token
      user_email: AlexApp.user_email

    if method == 'delete'
      options.data        = _.extend({}, options.data, auth_params)
      options.data        = JSON.stringify(options.data)
      options.contentType = "application/json"
    else
      options             = _.extend(options, auth_params)

  _sync.apply(this, [method, model, options])

AlexApp.addRegions({
  contentRegion: "#content-region"
  navigationRegion: "#navigation-region"
  modalRegion: AlexApp.Shared.Regions.Modal.extend({
    el: "#modal-region"
  })
})
