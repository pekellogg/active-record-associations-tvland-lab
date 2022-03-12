class Show < ActiveRecord::Base
  # A show has many characters and has many actors through characters.
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map(&:full_name)
  end

end