class PayrollSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :payPeriod, :total, :records

  attributes :payPeriod, :total, :records

  def records
    records.map(record => record.payroll_id = payroll.id)
  end


  belongs_to :user
  has_many :records, serializer: RecordSerializer
end
