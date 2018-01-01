class State < ApplicationRecord
  # Direct associations

  has_many   :item_states

  # Indirect associations

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
