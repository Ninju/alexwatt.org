$markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(filter_html: true))

class PortfolioItemSerializer < ActiveModel::Serializer
  attributes :name, :description_as_html

  def description_as_html
    puts $markdown.render("Hello world!")
    $markdown.render(object.description)
  end
end
