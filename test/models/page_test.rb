require "test_helper"

describe Page do
  # test "the truth" do
  #   assert true
  # end

  describe "validations" do
    let(:page) { Page.new }

    it "should not save page without title" do
      page.title = ""
      page.save.wont_equal true
    end

  end

end
