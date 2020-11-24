class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :username, :rate, :payrolls

  attributes :username, :payrolls, :payRate


  has_many :payrolls, serializer: PayrollSerializer
end
