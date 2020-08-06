class Weapon < ApplicationRecord
  has_many :pockets
  has_many :dinosaurs, through: :pockets
  validates :name, presence: true, uniqueness: true

  def to_label
    name
  end
end
