module ApplicationHelper

  def show_params()
    html = "<div><code>"
    params.each do |key, value|
      html += "#{key}: #{value} <br/> "
    end
    html += "</code></div>"
    return html.html_safe
  end

  def things_to_do(links)
    # key = URL, value = body
    html = "<ul>\n"
    links.each do |url, body|
      html += "\t<li>" + link_to(body, url)+ "</li>\n"
    end
    html += "</ul>\n"
    return html.html_safe
  end

  def calendar(month, year)
    prev_month = link_to "Previous", page_calendar_path(:month => month.to_i - 1, :year => year) 
    cal_str = "<table border='1'>"
    cal_str = "<tr><td>#{prev_month}</td><td colspan='7'>October</td></tr>"
    cal_str += "<tr>"
    cal_str += "<td>&nbsp;</td>"
    6.times do |day|
      cal_str += "<td>#{day + 1}</td>"
    end
    cal_str += "</tr>"
    cal_str += "</table>"
    cal_str.html_safe
  end

end
