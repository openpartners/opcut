module ApplicationHelper
  def title
    x_title = "Bez tytulu"
    if @title.nil?
      x_title
    else
      "#{@title}"
    end
  end
  def kod
    x_kod = "Bez koda"
    if @kod.nil?
      x_kod
    else
      "#{@kod}"
    end
  end
end
