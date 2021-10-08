class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :age_req, :city, :state
end
