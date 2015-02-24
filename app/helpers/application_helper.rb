module ApplicationHelper

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
