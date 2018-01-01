class Recipe < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :presence => true

  validates :url, :presence => true

end
