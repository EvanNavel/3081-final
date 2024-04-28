# app/models/system.rb
class System < ApplicationRecord
  has_many :games, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :release_date, presence: true
  validates :cost, numericality: { greater_than_or_equal_to: 0 }
  validates :condition, inclusion: { in: ['Sealed', 'Complete', 'Box Only', 'Manual Only', 'Cartridge/Disc Only'] }
end
