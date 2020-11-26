class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :username, :payRate, :payrolls

  attributes :username, :payrolls, :payRate


  has_many :payrolls, serializer: PayrollSerializer
end
