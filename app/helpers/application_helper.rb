
module ApplicationHelper
  def mark_up(str)
    raw Kramdown::Document.new(str).to_html
  end
end
