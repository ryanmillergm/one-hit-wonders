class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
  end

  def create
    playlist = Playlist.create(playlist_params)
    redirect_to "/playlists/#{playlist.id}"
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end


end