class PortfolioItem < ActiveRecord::Base
  attr_accessible :description, :name

  def description_as_html
    markdown = RedCarpet::Markdown.new(RedCarpet::HTML.new(filter_html: true))
    markdown.render(self.description)
  end
end
