require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    var = self.actors.collect do |act|
      "#{act.first_name} #{act.last_name}"
    end
    var
  end
end