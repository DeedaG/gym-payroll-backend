class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :team, :inGym, :offSite, :mileage

  belongs_to :payroll
end
