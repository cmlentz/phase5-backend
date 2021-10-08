class Activity < ApplicationRecord
  has_many :registers, dependent: :destroy
  has_many :customers, through: :registers
end
