# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
    release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13',
    release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R',
    release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R',
    release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13',
    release_date: '13-Aug-2021' },
  { title: 'Elle', rating: 'R',
    release_date: '11-Nov-2016' },
  { title: 'The Florida Project', rating: 'R',
    release_date: '22-May-2017' },
  { title: 'Yi Yi', rating: 'G',
    release_date: '06-Oct-2000' },
  { title: 'Yi Yi 2', rating: 'G',
    release_date: '06-Oct-2020' }
]

more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title], release_date: movie[:release_date]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end
