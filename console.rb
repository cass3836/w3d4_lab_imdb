require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

require('pry')

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

star1 = Star.new ({'first_name' => 'Al', 'last_name' => 'Pacino'})
star1.save()

star2 = Star.new ({'first_name' => 'Maggie', 'last_name' => 'Smith'})
star2.save()

movie1 = Movie.new ({'title' => 'Driving Miss Daisy', 'genre' => 'Manga'})
movie1.save()
movie2 = Movie.new ({'title' => 'Shawshank Redemption', 'genre' => 'Musical'})
movie2.save()

casting1 = Casting.new({'star_id' => star1.id, 'movie_id' => movie1.id, 'fee' => 1000})
casting1.save()
casting2 = Casting.new({'star_id' => star2.id, 'movie_id' => movie2.id, 'fee' => 200})
casting2.save()

binding.pry
nil
