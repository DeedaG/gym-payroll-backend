class Record < ApplicationRecord
  belongs_to :payroll, optional: true
<<<<<<< HEAD
=======

>>>>>>> 518ca360c9a7b47436d4b82611b689b0be7a635c
  has_many :groups
  validates :workdate, uniqueness: false
end
