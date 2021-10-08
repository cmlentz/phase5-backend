class Customer < ApplicationRecord
  has_many :registers, dependent: :destroy
  has_many :customers, through: :registers
end
