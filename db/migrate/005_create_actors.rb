class CreateActors < ActiveRecord::Migration[5.1]
def change
  create_table :actors do |t|
    t.string :first_name
    t.string :last_name
    end
  end

  def full_name
    Actor.select('first_name AS field_one', 'last_name AS field_two')
  end
end
