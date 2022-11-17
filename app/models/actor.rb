class Actor < ActiveRecord::Base

    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        self.roles.sum("salary")
    end

    def blockbusters
        self.movies.map do |movie|
          if  movie.box_office_earnings>50000000
            movie
          end
        end
    end

    def self.most_successful
        self.all.sort_by{|actor| actor.roles.sum(:salary)}.last
    end
end
