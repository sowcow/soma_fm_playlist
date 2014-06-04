require 'erb'


class M3U < Array
  def save file
    File.write file, m3u
  end

  private
  def m3u
    TEMPLATE.result binding
  end

TEMPLATE = ERB.new <<erb, 0, '-'
#EXTM3U
<% each do |url| -%>
<%=  url %>
<% end -%>
erb
end
