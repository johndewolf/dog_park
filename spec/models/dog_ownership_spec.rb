require 'spec_helper'

describe DogOwnership do
  dog = FactoryGirl.create(:dog)
  owner = FactoryGirl.create(:owner)

  it { should have_valid(:dog_id).when(dog.id) }
  it { should_not have_valid(:dog_id).when('', nil) }

  it { should have_valid(:owner_id).when(owner.id) }
  it { should_not have_valid(:owner_id).when('', nil) }

  it { should belong_to(:owner) }
  it { should belong_to(:dog) }
end

require 'spec_helper'

