class Role < ActiveRecord::Base
  belongs_to :movie_id
  belongs_to :star_id
end
