class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :team, :inGym, :offSite, :mileage, :hours, :record_id

  belongs_to :record
end
