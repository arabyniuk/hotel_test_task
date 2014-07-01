require 'spec_helper'


RSpec.describe "MotelActions", :type => :request do

  before do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end

  it { expect(page).to have_content("Signed in successfully") }

  it "redirect to success page creation" do
    create_motel_item title: "Banana House"
    expect(page).to have_content("Motel was successfully created")
  end

  it "displays an error when a motel has no title" do
    create_motel_item title: ""
    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content("Motel was successfully created")
  end

  it "displays an error when a motel has no title less than 5 charasters" do
    create_motel_item title: "XYZ"
    expect(page).to have_content("is too short")
    expect(page).to_not have_content("Motel was successfully created")
  end

  it "displays an error when a motel has no rating" do
    visit new_motel_path
    expect(page).to have_content("New motel")
    fill_in "Title", with: "Bangalulu"
    click_button "Create Motel"
    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content("Motel was successfully created")
  end
  
end