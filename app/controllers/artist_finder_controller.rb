class ArtistFinderController < ApplicationController
  
  @@lastfm = Lastfm.new('bca90534fbdd572bdf884e49a4d19467', '2c89fff7c7390afe5503ced33f1ca863')
  
  def search
  	begin
  		@artist = @@lastfm.artist.search(artist: params['artistsearch'])
  	rescue Exception => e
  		render :text => e
  	end		
  end
  
  def info
  	begin
  		@artistinfo = @@lastfm.artist.get_info(artist: params['artist'])
  	rescue Exception => e
  		render :text => e
  	end
  end

end
