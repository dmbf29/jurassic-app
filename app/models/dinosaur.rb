class Dinosaur < ApplicationRecord
  belongs_to :park
  validates :name, presence: true
  validates :image_url, presence: true
end
