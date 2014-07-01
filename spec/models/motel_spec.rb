require 'spec_helper'


RSpec.describe Motel do

  it { should belong_to(:user) }
  it { should have_many(:rates) }
  it { should have_many(:comments) }
  it { should have_one(:address) }
  it { should accept_nested_attributes_for(:address) }

  it 'Test validations' do
    should validate_presence_of(:title)
    should ensure_length_of(:title).is_at_least(5)
    should validate_presence_of(:rating)
  end

end