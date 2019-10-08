class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :team, :inGym, :offSite, :mileage

end
