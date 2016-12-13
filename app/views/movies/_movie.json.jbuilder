json.extract! movie, :id, :name, :description, :rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)