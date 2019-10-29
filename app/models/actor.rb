class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end 
  end
end
