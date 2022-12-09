class Movie < ApplicationRecord
    #belongs_to :genre
    #has_many :genre
    belongs_to :moviegenre
    belongs_to :movieactor


    def self.mtsearch(mtsearch)
        if mtsearch
            Movie.where('movies.m_title like ?', "%#{mtsearch}%").uniq
        else
            Movie.all
        end
    end

    def self.mssearch(mssearch)
        if mssearch
            Movie.where('movies.m_studio like ?', "%#{mssearch}%").uniq
        else
            Movie.all
        end
    end

    def self.mdsearch(mdsearch)
        if mdsearch
            Movie.where('movies.m_director like ?', "%#{mdsearch}%").uniq
        else
            Movie.all
        end
    end

    def self.mgsearch(mgsearch)
        if mgsearch
        
            # Select m_title
            # From movies
            # Inner Join moviegenres On moviegenres.mg_movieid = movies.m_movieid
            # Inner Join genres On genres.g_genreid = moviegenres.mg_genreid
            # Where g_genrename = 'Comedy';

            #This replictes the raw sql query but in rails, "%#{mgsearch}%" is whatever the user inputs into the search bar
            Movie.joins("Inner Join moviegenres On moviegenres.mg_movieid = movies.m_movieid").joins("Inner Join genres On genres.g_genreid = moviegenres.mg_genreid").where('genres.g_genrename like ?', "%#{mgsearch}%").uniq
        # if masearch
            
        #     # Select m_title
        #     # From Movies, Actors, MovieActors
        #     # WHERE a_actorid = ma_actorid
        #     # AND m_movieid = ma_movieid
        #     # AND a_actorname = 'Tom Hanks';


        #     #This replictes the raw sql query but in rails, "%#{mgsearch}%" is whatever the user inputs into the search bar
        #     Movie.joins("Inner Join movieactors On movieactors.ma_movieid = movies.m_movieid").joins("Inner Join actors On actors.a_actorid = movieactors.ma_actorid").where('actors.a_actorname like ?', "%#{masearch}%").uniq
        else
            Movie.all
        end
    end

    def self.masearch(masearch)
        if masearch
            
            # Select m_title
            # From Movies, Actors, MovieActors
            # WHERE a_actorid = ma_actorid
            # AND m_movieid = ma_movieid
            # AND a_actorname = 'Tom Hanks';


            #This replictes the raw sql query but in rails, "%#{masearch}%" is whatever the user inputs into the search bar
            Movie.joins("Inner Join movieactors On movieactors.ma_movieid = movies.m_movieid").joins("Inner Join actors On actors.a_actorid = movieactors.ma_actorid").where('actors.a_actorname like ?', "%#{masearch}%").uniq
        else
            Movie.all
        end
    end


end
