class Record < ApplicationRecord
  belongs_to :payroll
  has_many :groups
end
