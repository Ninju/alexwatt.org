$markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(filter_html: true))

class PortfolioItemSerializer < ActiveModel::Serializer
  attributes :name, :description_as_html, :screenshot_url, :id, :project_start_date, :description

  def description_as_html
    return "" unless object.description
    $markdown.render(object.description)
  end

  def screenshot_url
    object.screenshot && object.screenshot.url
  end
end
