class Park < ApplicationRecord
  has_many :dinosaurs, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
