class Recipe < ApplicationRecord
  # Direct associations

  has_many   :recipe_item_states

  # Indirect associations

  has_many   :item_states,
             :through => :recipe_item_states,
             :source => :item_state

  # Validations

  validates :name, :presence => true

  validates :url, :presence => true

end
