class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :payPeriod, :total, :records

  belongs_to :user
  has_many :records, serializer: RecordSerializer
end
