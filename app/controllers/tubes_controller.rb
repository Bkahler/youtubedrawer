class TubesController < ApplicationController
  def index
  end

  def search
    query = params[:search]
    client = YouTubeIt::Client.new(:dev_key => ENV["YOUTUBE_API"])
    @results = client.videos_by(:query => query, :page => 1, :per_page => 10)
    render :index
  end

end
