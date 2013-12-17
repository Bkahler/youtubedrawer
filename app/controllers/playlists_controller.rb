class PlaylistsController < ApplicationController


  def index
    @playlists = Playlist.all
  end

  def create
    @playlist = Playlist.create(title:params[:playlist], user_id:params[:id])
    redirect_to tubes_path
  end

  def destroy
    Playlist.delete(params[:id])
    redirect_to playlists_path
  end

end
