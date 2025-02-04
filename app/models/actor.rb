class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + last_name
  end

  def list_roles
    self.characters.collect do |character|
      character.name + " - " + Show.find_by_id(character.id).name
    end
  end

end
