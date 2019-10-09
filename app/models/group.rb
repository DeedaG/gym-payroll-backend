class Group < ApplicationRecord
  belongs_to :payroll, optional: true
end
