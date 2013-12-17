class VideosController < ApplicationController

  def destroy
    Video.delete(params[:id])
    redirect_to tubes_path
  end

end
