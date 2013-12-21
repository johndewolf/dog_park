class Dog < ActiveRecord::Base
  validates_presence_of :name

  has_many :dog_ownerships,
    inverse_of: :dog

  has_many :owners,
    through: :dog_ownerships,
      inverse_of: :dogs
end
