class Movie < ActiveRecord::Base

  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def others_by_same_director
    # Your code here #
    return Movie.where(director: self.director).where.not(title: self.title)
  end
end
