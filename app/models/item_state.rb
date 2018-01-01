class ItemState < ApplicationRecord
  # Direct associations

  has_many   :recipe_item_states

  belongs_to :state

  belongs_to :item

  # Indirect associations

  # Validations

end
