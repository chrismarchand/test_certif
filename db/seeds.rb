# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Movie.destroy_all

url = 'https://gist.githubusercontent.com/alexandremeunier/49533eebe2ec93b14d32b2333272f9f8/raw/924d89e2236ca6fa2ade7481c91bfbf858c49531/movies.json'
data_movie = URI.open(url).read
movies = JSON.parse(data_movie).first(10)

movies.each do |m|
  Movie.create!(
    title: m['title'],
    year: m['year'].to_i,
    rating: m['rating'].to_f,
    actors: m['actors'],
    genre: m['genre'],
    object_id: m['object_id'].to_i
  )
end
