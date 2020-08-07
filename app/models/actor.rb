class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    characters = self.characters.map {|c| c.name}
    shows = self.shows.map {|s| s.name}
    array = characters.concat(shows)
    roles << array.join(" - ")
    roles
  end
end
