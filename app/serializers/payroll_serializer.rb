class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :payPeriod, :workdate, :total

  belongs_to :user
  has_many :groups, serializer: GroupSerializer
end
