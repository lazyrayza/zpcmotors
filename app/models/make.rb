class Make < ApplicationRecord
  has_many :models
  has_many :cars, through: :models
end
