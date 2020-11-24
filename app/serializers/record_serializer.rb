class RecordSerializer
  include FastJsonapi::ObjectSerializer
<<<<<<< HEAD
  attributes :workdate, :totalHours, :payroll_id
=======
  attributes :workdate, :totalHours, :groups, :payroll_id
>>>>>>> 518ca360c9a7b47436d4b82611b689b0be7a635c

  belongs_to :payroll
  has_many :groups, serializer: GroupSerializer
end
