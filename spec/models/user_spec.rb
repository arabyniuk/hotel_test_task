require 'spec_helper'


RSpec.describe User do

  it { should have_many(:motels) }
  
  it "is valid with email and password" do
    u = create(:user)
    expect(u).to be_valid
  end

  it "is invalid without email" do
    u = build(:user, :email => nil)
    expect(u).to have(1).errors_on(:email)
  end

  it "is invalid if passwords don't match" do
    u = build(:user, :password => "111", :password_confirmation => "111")
    expect(u).to have(1).errors_on(:password)
  end

end