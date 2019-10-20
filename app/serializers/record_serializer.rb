class RecordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :workdate, :totalHours

  belongs_to :payroll
end
