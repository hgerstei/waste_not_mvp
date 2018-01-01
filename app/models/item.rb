class Item < ApplicationRecord
  # Direct associations

  has_many   :item_states

  # Indirect associations

  has_many   :recipe_item_states,
             :through => :item_states,
             :source => :recipe_item_states

  has_many   :states,
             :through => :item_states,
             :source => :state

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
