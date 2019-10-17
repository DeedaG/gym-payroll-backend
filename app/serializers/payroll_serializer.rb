class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :payPeriod

  belongs_to :user
  has_many :groups, serializer: GroupSerializer
end
