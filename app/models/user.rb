class User < ApplicationRecord
  has_secure_password

  has_many :payrolls
  has_many :groups, through: :payrolls
end
