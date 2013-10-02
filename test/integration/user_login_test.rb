require "test_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "UserLogin Integration Test" do
  # it "must be a real test" do
  #   flunk "Need real tests"
  # end
  describe "when admin login" do

    before do
      @admin = FactoryGirl.create(:admin)
    end

      describe "successfull login" do
      it "should redirect to root_path" do
        visit "/users/sign_in"
        assert page.find("h3").has_content? "登入"

        fill_in "user_email", with: "admin@zhenwu.com"
        fill_in "user_password", with: "qwer1234"

        click_button "登入"

        #assert_response :success

        assert page.has_css?("#homepage-carousel")
        assert page.has_css?("#admin-nav")

      end
    end
  end

end
