class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters 
  
  def full_name
   name =  "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    roles = []
    array_of_characters = self.characters.collect do |character|
      character.name 
     end 
    array_of_shows = self.shows.collect do |show|
      show.name 
     end 
     role = array_of_characters.concat array_of_shows 
     roles << role.join(" - ")
  end 
  
end