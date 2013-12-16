class TubesController < ApplicationController
  def index
  end

  def search
    @current_user = current_user
    query = params[:search]
    client = YouTubeIt::Client.new(:dev_key => ENV["YOUTUBE_API"])
    @results = client.videos_by(:query => query, :page => 1, :per_page => 10)
    render :index
  end

  def create
     @playlist = Playlist.create(title:params[:playlist], user_id:params[:id])
     render :index
  end

  def addtoPlaylist
    @video = Video.create(title:params[:title],thumbnail:params[:thumbnail],embed_url:params[:embed_url])
    @playlistVideo = PlaylistVideo.create(playlist_id:params[:playlist_id], video_id:@video.id)
    render :index
  end

end
