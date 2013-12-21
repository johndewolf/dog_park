require 'spec_helper'

describe 'Owner' do

  it { should have_valid(:first_name).when('Jack','Rachel') }
  it { should_not have_valid(:first_name).when('', nil) }

  it { should have_valid(:last_name).when('DeWolf', 'Hewes') }
  it { should_not have_valid(:last_name).when('', nil) }

  it { should have_valid(:email).when('jack@jack.com', 'lol@aoolc.om') }
  it { should_not have_valid(:email).when('Jack.com','Jack@', '', nil) }

  # it { should have_many(:dog_owner_matcher) }
  # it { should have_many(:dogs).through(:dog_owner_matcher) }
end
