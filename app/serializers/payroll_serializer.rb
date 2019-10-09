class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :payPeriod, :date

  belongs_to :user
  has_many :groups, serializer: GroupSerializer
end
