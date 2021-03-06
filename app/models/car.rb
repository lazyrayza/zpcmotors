class Car < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :model, foreign_key: "model_id"
  belongs_to :make, foreign_key: "make_id"
  validates  :mileage, presence: true
  validates :year, presence: true
end
