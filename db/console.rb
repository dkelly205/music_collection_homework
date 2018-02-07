require("pry")
require_relative("../models/artist.rb")
require_relative("../models/album.rb")


artist1 = Artist.new({'name' => 'Oasis'})
artist1.save()


album1 = Album.new({
  'name' => 'Definetly Maybe',
  'genre' => 'rock',
  'artist_id' => artist1.id
  })

  album1.save()

  artist1.name = "Liam Gallagher"
  artist1.update()

  album1.name = 'Hello'
  album1.update()

  album1.genre = 'pop'
  album1.update()

  binding.pry
  nil
