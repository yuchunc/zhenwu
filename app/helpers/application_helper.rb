module ApplicationHelper

  def icon(type)
    "<span class='glyphicon glyphicon-#{type}'></span>".html_safe
  end
end
