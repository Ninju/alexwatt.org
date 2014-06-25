AlexApp.module("Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.Controller =
    signIn: () ->
      loginView = new SignIn.SignIn()
      
      loginView.on("form:submit", (view) ->
        view.$el.find("form").ajaxSubmit
          dataType: "json"
          success: (response) ->
            if response.success
              AlexApp.user_is_admin = (response.user_admin == "t") or (response.user_admin == true)

              AlexApp.trigger("portfolio:list")
            else
              loginView.displayError()
      )

      AlexApp.contentRegion.show(loginView)
)
