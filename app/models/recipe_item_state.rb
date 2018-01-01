class RecipeItemState < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :item_state_id, :presence => true

  validates :recipe_id, :presence => true

end
