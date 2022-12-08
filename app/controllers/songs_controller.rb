class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end
  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    song.save
    render json: song.as_json
  end
  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end
  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title]
    song.album = params[:album]
    song.artist = params[:artist]
    song.year = params[:year]
    song.save
    render json: song.as_json
  end
  def destory
    song = Song.find_by(id: params[:id])
    song.destory
  end

end
