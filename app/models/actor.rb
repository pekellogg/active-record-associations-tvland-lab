class Actor < ActiveRecord::Base
    # An actor has many characters and has many shows through characters.
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    
    # Failure/Error: expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
    def list_roles
        self.characters.map{|char|"#{char.name} - #{char.show.name}"}
    end
end