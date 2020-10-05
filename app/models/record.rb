class Record < ApplicationRecord
  belongs_to :payroll, optional: true

  has_many :groups
  validates :workdate, uniqueness: true
end
