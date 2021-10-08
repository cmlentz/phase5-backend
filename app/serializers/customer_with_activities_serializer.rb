class CustomerWithActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :city, :state
  has_many :activities
end