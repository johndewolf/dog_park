class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, email: true

  has_many :dog_ownerships,
    inverse_of: :owner

  has_many :dogs,
    through: :dog_ownerships,
    inverse_of: :owners
end
