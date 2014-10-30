module DateHelper
  def date_name(date)
    if date == Date.today.strftime("%A %B %d %Y")
      "Today"
    elsif date == Date.yesterday.strftime("%A %B %d %Y")
      "Yesterday"
    else
      Date.parse(date).strftime("%A")
    end
  end
end