AlexApp.module "Authentication.SignIn", (SignIn, AlexApp, Backbone, Marionette, $, _) ->
  SignIn.Controller =
    signIn: ->
      loginView = new SignIn.SignIn()
      
      loginView.on "form:submit", (obj) ->
        obj.view.ui.form.ajaxSubmit
          dataType: "json"
          success: (response) ->
            if response.success
              #AlexApp.authenticationRegion.show("<p>You are logged in now!</p>");
              gon.current_user_is_admin = response.user_admin
              AlexApp.trigger("portfolio:list")
            else
              loginView.displayError()

      AlexApp.contentRegion.show(loginView)
