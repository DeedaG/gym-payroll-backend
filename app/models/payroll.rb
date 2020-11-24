class Payroll < ApplicationRecord
  belongs_to :user
  has_many :records
  validates :payPeriod, uniqueness: true

end
