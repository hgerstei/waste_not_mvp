class ItemState < ApplicationRecord
  # Direct associations

  belongs_to :state

  belongs_to :item

  # Indirect associations

  # Validations

end
