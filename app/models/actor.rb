class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    Actor.select('first_name AS field_one', 'last_name AS field_two')
  end
end
