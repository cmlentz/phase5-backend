class Register < ApplicationRecord
  belongs_to :customer
  belongs_to :activity
end
