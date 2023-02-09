# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    m_id = self.movie_id
    
    matching_movie = Movie.where({ :id => m_id})

    return matching_movie.at(0)

  end

  def actor
    a_id = self.actor_id

    matching_actor = Actor.where({ :id => a_id})

    return matching_actor.at(0)

  end  

end
