class RecordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :workdate, :totalHours

  belongs_to :payroll
  has_many :groups, serializer: GroupSerializer
end
