oldsync = Backbone.sync

Backbone.sync = (method, model, options) ->
  if AlexApp.user_token and AlexApp.user_email
    options.user_token = AlexApp.user_token
    options.user_email = AlexApp.user_email

  oldsync(method, model, options)

AlexApp.addRegions({
  contentRegion: "#content-region"
  navigationRegion: "#navigation-region"
  modalRegion: AlexApp.Shared.Regions.Modal.extend({
    el: "#modal-region"
  })
})
