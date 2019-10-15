class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    self.characters.all.each do |character|
        roles << "#{character.name} - #{character.show.name}"
    end
    roles
  end

end