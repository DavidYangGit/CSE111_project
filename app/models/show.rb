class Show < ApplicationRecord
    belongs_to :showgenre
    belongs_to :showactor


    def self.stsearch(stsearch)
        if stsearch
            Show.where('shows.s_title like ?', "%#{stsearch}%").uniq
        else
            Show.all
        end
    end

    def self.sssearch(sssearch)
        if sssearch
            Show.where('shows.s_studio like ?', "%#{sssearch}%").uniq
        else
            Show.all
        end
    end

    def self.sdsearch(sdsearch)
        if sdsearch
            Show.where('shows.s_director like ?', "%#{sdsearch}%").uniq
        else
            Show.all
        end
    end

    def self.sgsearch(sgsearch)
        if sgsearch
            Show.joins("Inner Join showgenres On showgenres.sg_showid = shows.s_showid").joins("Inner Join genres On genres.g_genreid = showgenres.sg_genreid").where('genres.g_genrename like ?', "%#{sgsearch}%").uniq
       
        else
            Show.all
        end
    end

    def self.sasearch(sasearch)
        if sasearch
            Show.joins("Inner Join showactors On showactors.sa_showid = shows.s_showid").joins("Inner Join actors On actors.a_actorid = showactors.sa_actorid").where('actors.a_actorname like ?', "%#{sasearch}%").uniq
        else
            Show.all
        end
    end
end
