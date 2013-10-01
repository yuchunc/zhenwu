require "test_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "UserLogin Integration Test" do
  # it "must be a real test" do
  #   flunk "Need real tests"
  # end

  before do
    @admin = FactoryGirl.create(:admin)
  end

  it "should be able to login" do
    visit "/users/sign_in"
  end

end
