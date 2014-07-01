require 'spec_helper'


RSpec.describe Rate do

  it { should belong_to(:motel) }
  it { should validate_presence_of(:motel) }
  it { should ensure_inclusion_of(:value).in_range(1..10) }

end