class DogOwnership < ActiveRecord::Base
  validates_presence_of :owner_id
  validates_presence_of :dog_id

  belongs_to :owner
  belongs_to :dog
end
