class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :payPeriod, :total, :records

  belongs_to :user
  has_many :records, serializer: RecordSerializer
end
