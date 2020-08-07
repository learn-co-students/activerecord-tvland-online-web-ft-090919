class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        list = []
        self.characters.each do |char|
            list << "#{char.name} - #{char.show.name}"
        end
        list
    end

end