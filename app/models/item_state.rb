class ItemState < ApplicationRecord
  # Direct associations

  has_many   :recipe_item_states

  belongs_to :state

  belongs_to :item

  # Indirect associations

  has_many   :recipes,
             :through => :recipe_item_states,
             :source => :recipe

  # Validations

end
