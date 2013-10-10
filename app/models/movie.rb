class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end
  
  def snippet
    description.to_s.truncate 50
  end

  def audience_rating
    #RottenMovie.find(ratings: RottenMovie.find(audience_score))
    if rotten_finder
      rotten_finder.ratings.audience_score
    else
      nil
    end
  end
end
