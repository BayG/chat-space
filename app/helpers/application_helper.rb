module ApplicationHelper
  def show_time(message)
    message.created_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
