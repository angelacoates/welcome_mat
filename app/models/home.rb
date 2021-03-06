class Home < ApplicationRecord
  belongs_to :user
  include ImageUploader[:image]
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :zipcode, presence: true

  def self.search(search)
      searchstring = search.to_s.gsub(',','')
      where("address ILIKE ? OR city ILIKE ? OR state ILIKE ? OR zipcode ILIKE ?", "%#{searchstring}%", "%#{searchstring}%", "%#{searchstring}%", "%#{searchstring}%")
  end
end
