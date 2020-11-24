class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :rate, :payrolls

  has_many :payrolls, serializer: PayrollSerializer
end
