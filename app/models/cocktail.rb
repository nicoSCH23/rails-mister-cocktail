class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, length: { minimum: 1 }
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
