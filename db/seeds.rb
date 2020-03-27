Song.delete_all
Genre.delete_all
Artist.delete_all

hotline_bling = Song.create(:name=>'Hotline Bling')
thriller = Song.create(:name=>'Thriller')

drake = Artist.create(:name=>'Drake')
mj = Artist.create(:name=>'Michael Jackson')

rap = Genre.create(:name=>'Rap')
pop = Genre.create(:name=>'Pop')

hotline_bling.artist = drake
thriller.artist = mj

drake.songs << hotline_bling
mj.songs << thriller

pop.songs << thriller
rap.songs << hotline_bling

blink = Song.create(:name=>'Blink')
ice = Song.create(:name=>'Ice')

rock = Genre.create(:name=>'Rock')
hop_scotch = Genre.create(:name=>'Hop Scotch')

blink.artist = drake
ice.artist = mj

drake.songs << blink
mj.songs << ice

hop_scotch.songs << ice
rock.songs << blink
