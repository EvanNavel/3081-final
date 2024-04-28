class Game < ApplicationRecord
  belongs_to :system

  validates :title, presence: true
  validates :release_date, presence: true
  validates :cost, numericality: { greater_than_or_equal_to: 0 }
  validates :manufacturer, presence: true
  validates :condition, inclusion: { in: ['Sealed', 'Complete', 'Box Only', 'Manual Only', 'Cartridge/Disc Only'] }
end
