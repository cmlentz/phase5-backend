class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :city, :state
end
