class RegisterSerializer < ActiveModel::Serializer
  attributes :id
  has_one :customer
  has_one :activity
end
