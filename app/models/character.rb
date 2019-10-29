class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def change
    create_table :characters do |t|
      t.string :name
      t.integer :actor_id
      t.integer :show_id
  end
end
