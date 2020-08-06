module ApplicationHelper
  def paint(string)
    pp Paint["~~~~~~~~~~~~~~~~~#{string}~~~~~~~~~~~~~~~~~", :magenta, :bright]
  end
end
