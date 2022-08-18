# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "json"
require "open-uri"
require 'faker'

Movie.destroy_all
List.destroy_all
Bookmark.destroy_all

#parse movie list using the API

url = "http://tmdb.lewagon.com/movie/top_rated"
user_serialized = URI.open(url).read
users = JSON.parse(user_serialized)

films = users['results']

  films.each do |film|
    movie = Movie.create!(
      title:  film['original_title'],
      overview: film['overview'],
      poster_url: film['poster_path'],
      rating: film['vote_average'],
    )
# puts " Titre - #{user["original_title"]} / Overview - #{user["overview"]}"
  p "#{film['original_title']} created"
  end

#create list names

list = List.create!(name: 'drama')
list_1 = List.create!(name: 'comedy')
list_2 = List.create!(name: 'horror')
p "#{list} - #{list_1} - #{list_2}"
#create Bookmark

3.times do
  bookmark = Bookmark.create!(
  comment: "khejhjek kjhekjhekjhe",
  movie_id: Movie.ids.sample,
  list_id: List.ids.sample,
)

p bookmark.comment
end
