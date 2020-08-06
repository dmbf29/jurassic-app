class Pocket < ApplicationRecord
  belongs_to :weapon
  belongs_to :dinosaur
  validates :dinosaur, uniqueness: { scope: :weapon }
end
