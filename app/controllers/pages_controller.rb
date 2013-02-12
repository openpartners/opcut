class PagesController < ApplicationController
  def home
    @title = "Startowa"
    @kod = ('a'..'z').to_a.shuffle[0..7].join
  end
end
