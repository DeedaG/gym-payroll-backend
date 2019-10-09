class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :rate

  has_many :payrolls, serializer: PayrollSerializer
end
