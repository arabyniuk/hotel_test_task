require 'spec_helper'


RSpec.describe Address do

  it { should belong_to(:motel) }

end