require 'spec_helper'

describe MotelsController do
  let(:user) { FactoryGirl.create(:user) }

  before :each do
    sign_in user
  end

  it "should render page for conversations" do
    get :new
    expect(response).to render_template('new')
  end

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  it "creates a new motel" do
    expect{
      post :create, motel: FactoryGirl.attributes_for(:motel)
    }.to change(Motel, :count).by(1)
  end

  it "redirect to the created motel" do
    post :create, motel: FactoryGirl.attributes_for(:motel)
    response.should redirect_to Motel.last
  end

  it "does not save the new contact" do
    expect{
      post :create, motel: FactoryGirl.attributes_for(:motel, :title => '', :rating => '')
    }.to_not change(Motel, :count)
  end


  it "re-render the new method" do
    post :create, motel: FactoryGirl.attributes_for(:motel, :title => '', :rating => '')
    response.should render_template :new
  end

end