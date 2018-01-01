class Recipe < ApplicationRecord
  # Direct associations

  has_many   :recipe_item_states

  # Indirect associations

  # Validations

  validates :name, :presence => true

  validates :url, :presence => true

end
