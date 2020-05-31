class MusicsController < ApplicationController
  def index
    @musics = Music.all
    @albums = Album.all
    @musical_genres = MusicalGenre.all
  end

  def create
    music = Music.new(music_params)
    begin
      music.save!
    rescue => exc
      puts exc
    ensure
      render 'new'
    end
  end

  def new
    @music = Music.new
    @albums = Album.all
    @musical_genres = MusicalGenre.all
  end

  def edit
    @music = Music.find(params[:id])
    @albums = Album.all
    @musical_genres = MusicalGenre.all
  end

  def show
    @music = Music.find(params[:id])
  end

  def update
    music = Music.find(params[:id])
    begin
      music.update(music_params)
    rescue ValidationError => exc
      puts exc
      flash[:notice] = "Dados incorretos"
    ensure
      render 'index'
    end
  end

  def destroy
    music = Music.find(params[:id])
    @albums = Album.all
    @musical_genres = MusicalGenre.all
    begin
      music.destroy!
    rescue => exc
      puts exc
    ensure
      render 'index'
    end
  end

  private

  def music_params
    params.require('music').permit(:name, :explicit, :album_id, :musical_genre_id)
  end
end
