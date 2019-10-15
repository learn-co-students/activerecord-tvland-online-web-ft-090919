class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

  def actors_list
    actors = []
    self.characters.each do |character|
        actors << character.actor.full_name
    end
    actors
  end
end