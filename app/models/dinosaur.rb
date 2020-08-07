class Dinosaur < ApplicationRecord
  belongs_to :park # @dinosaur.park
  has_many :pockets
  has_many :weapons, through: :pockets # @dinosaur.weapons
  validates :name, presence: true
  # validates :image_url, presence: true
  has_one_attached :photo
end
