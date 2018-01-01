class Item < ApplicationRecord
  # Direct associations

  has_many   :item_states

  # Indirect associations

  has_many   :states,
             :through => :item_states,
             :source => :state

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
