class State < ApplicationRecord
  # Direct associations

  has_many   :item_states

  # Indirect associations

  has_many   :items,
             :through => :item_states,
             :source => :item

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
