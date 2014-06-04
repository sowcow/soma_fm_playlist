require './lib/soma_playlists'
require './lib/m3u'


OUTPUT = 'all-somas.m3u'


task :default do
  playlist = M3U.new

  SomaPlaylists.all.each { |url|
    playlist << url
  }

  playlist.save OUTPUT
end
