class User < ApplicationRecord
  has_many :allergies, :recipes
  has_many :ingredients, through: :allergies
end
