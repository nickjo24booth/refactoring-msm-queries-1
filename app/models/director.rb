# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    matching_movies = Movie.where({ :director_id => self.id}) #THIS METHOD WILL BE RUNNING ON AN INSTANCE OF THE DIRECTOR CLASS

    return matching_movies
  end

end
