class Movie < ApplicationRecord
    # Return all possible movie ratings
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  # Return movies that match the selected ratings
  def self.with_ratings(ratings_list, sort_by = 'title')
    if ratings_list.nil? || ratings_list.empty?
        movies= Movie.all
    else
        movies= Movie.where(rating: ratings_list)
    end

   if sort_by == 'release_date'
    movies.order(:release_date)
   else
    movies.order(:title) 
   end

  end
end
