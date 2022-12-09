json.extract! moviegenre, :id, :mg_genreid, :mg_movieid, :created_at, :updated_at
json.url moviegenre_url(moviegenre, format: :json)
