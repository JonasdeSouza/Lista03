class ApplicationController < ActionController::Base
  def homepage
    @albums = Album.all
    @musics = Music.all
  end

  def getlink(name)
    last = name.downcase
    @final2 = last.gsub(" ", "-")
    return @final2
  end
  helper_method :getlink

  def show
  end

  end