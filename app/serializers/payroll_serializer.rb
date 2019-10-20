class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :payPeriod, :total

  belongs_to :user
  has_many :records, serializer: RecordSerializer
end
