AlexApp.module("Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.Controller = {
    signIn: () ->
      loginView = new SignIn.SignIn()

      loginView.on("form:submit", (view) ->
        view.$el.find("form").ajaxSubmit
          dataType: "json"
          success: (response) ->
            if response.success
              AlexApp.user_token = response.user_token
              AlexApp.user_email = response.user_email

              AlexApp.trigger("portfolio:list")
            else
              loginView.displayError()
      )

      AlexApp.contentRegion.show(loginView)
  }
)
