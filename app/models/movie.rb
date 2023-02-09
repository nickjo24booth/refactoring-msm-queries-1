# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director

    d_id = self.director_id #SELF REFERS TO WHAT THE METHOD IS CALLED ON.
    matching_directors = Director.where({ :id => d_id})

    return matching_directors.at(0)
  end

  def cast
    matching_cast = Character.where({ :movie_id => self.id}) #THIS METHOD WILL BE RUNNING ON AN INSTANCE OF THE MOVIE CLASS

    return matching_cast
  end
end
