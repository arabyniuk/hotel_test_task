require 'spec_helper'


RSpec.describe Comment do

  it { should belong_to(:motel) }
  
end
