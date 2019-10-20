class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :team, :inGym, :offSite, :mileage, :hours

  belongs_to :record
end
