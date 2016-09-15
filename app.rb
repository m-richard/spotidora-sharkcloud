require "sinatra"
require_relative "config/application"

get '/' do
  redirect '/playlists'
end

get '/playlists' do
  @playlists = Playlist.all
  erb :'/playlists/index'
end

get '/playlists/:id' do
  @playlist = Playlist.find(params[:id])
  erb :'/playlists/show'
end
