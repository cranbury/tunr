class SongsController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    render(:new)
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @artist.songs.create(title: params[:title], year: params[:year])
    redirect_to("/artists/#{@artist.id}")
  end

  def edit
    @song = Song.find(params[:id])
    @artist = Artist.find(params[:artist_id])
    render(:edit)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(title: params[:title], year: params[:year])
    redirect_to("/artists/#{@song.artist_id}")
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to("/artists/#{@song.artist_id}") 
  end
    


end