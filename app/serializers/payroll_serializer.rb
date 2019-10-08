class PayrollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :payPeriod, :date

end
