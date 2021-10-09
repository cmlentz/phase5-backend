class Customer < ApplicationRecord
  has_many :registers
  has_many :activities, through: :registers

  validates :name, presence: true
  validates :age, presence: true
end
