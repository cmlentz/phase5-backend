class Customer < ApplicationRecord
  has_many :registers, dependent: :destroy
  has_many :activities, through: :registers
end
