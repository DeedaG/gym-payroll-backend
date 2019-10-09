class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :team, :inGym, :offSite, :mileage

  belongs_to :payroll
end
