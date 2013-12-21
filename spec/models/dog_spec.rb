require 'spec_helper'

describe Dog do
  it { should have_valid(:name).when('Spot', 'Ruby') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_many(:dog_ownerships) }
  it { should have_many(:owners).through(:dog_ownerships) }
end
