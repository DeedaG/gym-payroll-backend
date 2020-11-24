class UserSerializer
  include FastJsonapi::ObjectSerializer
<<<<<<< HEAD
  attributes :username, :rate, :payrolls
=======
  attributes :username, :payrolls, :payRate
>>>>>>> 518ca360c9a7b47436d4b82611b689b0be7a635c

  has_many :payrolls, serializer: PayrollSerializer
end
