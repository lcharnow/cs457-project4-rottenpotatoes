class Movie < ApplicationRecord
    # Return all possible movie ratings
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  # Return movies that match the selected ratings
  def self.with_ratings(ratings_list)
    if ratings_list.nil? || ratings_list.empty?
      return Movie.all
    end
    Movie.where(rating: ratings_list)
  end
end
