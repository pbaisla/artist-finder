class ArtistFinderController < ApplicationController
  
  @@lastfm = Lastfm.new('bca90534fbdd572bdf884e49a4d19467', '2c89fff7c7390afe5503ced33f1ca863')
  
  def search
  	begin
  		if user_signed_in?
  			@search = History.new({name: params['artistsearch'], user_id: current_user.id})
  			@search.save
  		end
  		@artist = @@lastfm.artist.search(artist: params['artistsearch'])
  	rescue Exception => e
  		@artist = {'status' => "notok"}
  	end		
  end
  
  def info
  	begin
  		@artistinfo = @@lastfm.artist.get_info(artist: params['artist'])
  	rescue Exception => e
  		@artistinfo = {'status' => "notok"}
  	end
  end

end
