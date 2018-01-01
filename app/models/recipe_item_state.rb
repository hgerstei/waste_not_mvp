class RecipeItemState < ApplicationRecord
  # Direct associations

  belongs_to :item_state

  belongs_to :recipe

  # Indirect associations

  # Validations

  validates :item_state_id, :presence => true

  validates :recipe_id, :presence => true

end
