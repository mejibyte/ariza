# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def clear
    '<div class="clear"></div>'
  end

  def link_to_group(text)
    link_to text, "http://www.facebook.com/group.php?gid=125169219846", :target => "_new"
  end
end
