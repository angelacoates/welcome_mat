class Home < ApplicationRecord
  include ImageUploader[:image]
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :zipcode, presence: true
end
