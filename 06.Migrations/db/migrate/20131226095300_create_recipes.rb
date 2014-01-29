class CreateRecipes < ActiveRecord::Migration

  def change
    create_table :recipes do |t|
      t.string  :name
      t.string  :description
      t.integer  :duration
      t.integer :difficulty
  	end
  end

end
