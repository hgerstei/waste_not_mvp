class RecipeItemState < ApplicationRecord
  # Direct associations

  belongs_to :item_state

  belongs_to :recipe

  # Indirect associations

  has_one    :item,
             :through => :item_state,
             :source => :item

  # Validations

  validates :item_state_id, :presence => true

  validates :recipe_id, :presence => true

end
