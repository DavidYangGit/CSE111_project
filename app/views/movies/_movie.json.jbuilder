json.extract! movie, :id, :m_title, :m_releaseDate, :m_studio, :m_director, :m_movieid, :created_at, :updated_at
json.url movie_url(movie, format: :json)
