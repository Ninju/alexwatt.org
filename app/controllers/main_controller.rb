class MainController < ApplicationController
  respond_to :json

  def about
  end

  def portfolio_items
    respond_with([
      {
        name: "alexwatt.org",
        image_path: "/assets/portfolio/alexwatt3.png",
        paragraphs: [
          "My personal portfolio site which hosts a number of games, code samples, and examples of past and present work.",
          "If you're reading this you're already here, so I will jump straight into the Tech Overview. The website is open source and can be found on Github."
        ],
        tech_overview: "Ruby on Rails, Marionette.js, Coffeescript, Slim, Skim, Unicorn, PostgreSQL, Less, Sass, jQuery, Bootstrap, and deployed on Heroku."
      },

      {
        name: "alexwatt.org",
        image_path: "/assets/portfolio/alexwatt3.png",
        paragraphs: [
          "My personal portfolio site which hosts a number of games, code samples, and examples of past and present work.",
          "If you're reading this you're already here, so I will jump straight into the Tech Overview. The website is open source and can be found on Github."
        ],
        tech_overview: "Ruby on Rails, Marionette.js, Coffeescript, Slim, Skim, Unicorn, PostgreSQL, Less, Sass, jQuery, Bootstrap, and deployed on Heroku."
      }
    ])
  end
end
