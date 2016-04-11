class SongsController < ApplicationController
  before_action :set_song, only: [:show ]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def show
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)

    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
