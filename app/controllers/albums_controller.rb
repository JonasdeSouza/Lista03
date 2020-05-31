class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def create
    album = Album.new(albums_params)
    begin
      album.save!
    rescue => exc
      puts exc
    ensure
      render 'new'
    end
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def show
    @album = Album.find(params[:id])
  end

  def update
    album = Album.find(params[:id])
    begin
      album.update(albums_params)
    rescue ValidationError => exc
      puts exc
      flash[:notice] = "Dados incorretos"
    ensure
      render 'new'
    end
  end

  def destroy
    album = Album.find(params[:id])
    begin
      album.destroy!
    rescue => exc
      puts exc
    ensure
      render 'new'
    end
  end

  private

  def albums_params
    params.require('album').permit(:name, :artist)
  end
end
