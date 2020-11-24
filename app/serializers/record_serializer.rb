class RecordSerializer
  include FastJsonapi::ObjectSerializer

  attributes :workdate, :totalHours, :payroll_id

  attributes :workdate, :totalHours, :groups, :payroll_id


  belongs_to :payroll
  has_many :groups, serializer: GroupSerializer
end
