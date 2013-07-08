json.array!(@movies) do |movie|
  json.extract! movie, :title, :is_in_theatres, :released, :rating, :description
  json.url movie_url(movie, format: :json)
end
