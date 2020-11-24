class PayrollSerializer
  include FastJsonapi::ObjectSerializer
<<<<<<< HEAD
  attributes :id, :payPeriod, :total, :records
=======
  attributes :payPeriod, :total, :records

  def records
    records.map(record => record.payroll_id = payroll.id)
  end
>>>>>>> 518ca360c9a7b47436d4b82611b689b0be7a635c

  belongs_to :user
  has_many :records, serializer: RecordSerializer
end
