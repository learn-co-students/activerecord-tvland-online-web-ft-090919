class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    actors.map { |actor| actor.full_name }
  end
end