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

  # Returns the complete URL used for this request.
  def adres
    x_adres = "Bez adresu"
      if @adres.nil?
        x_adres
      else
        "#{@adres}"
      end
  end


end
