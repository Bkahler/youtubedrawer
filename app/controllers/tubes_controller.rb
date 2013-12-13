class TubesController < ApplicationController
  def index
  end

  def search
    client = YouTubeIt::Client.new(:dev_key => ENV["YOUTUBE_API"])
    @results = client.videos_by(:query => "penguin", :page => 1, :per_page => 10)
    # binding.pry
    p @results




  end

end
