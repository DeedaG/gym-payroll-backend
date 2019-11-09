class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :payrolls

  has_many :payrolls, serializer: PayrollSerializer
end
