class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :payrolls, :payRate

  has_many :payrolls, serializer: PayrollSerializer
end
