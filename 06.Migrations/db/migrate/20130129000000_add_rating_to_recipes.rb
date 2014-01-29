class AddRatingToRecipes < ActiveRecord::Migration

  def change
	add_column(:recipes, :rate, :integer)
  end

end
