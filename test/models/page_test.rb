require "test_helper"

describe Page do

  describe "validations" do
    let(:page) { Page.new }

    it "should not save page without title" do
      page.title = ""
      page.save.wont_equal true
    end

  end

  describe "find page by language" do
    before do
      @page_en = FactoryGirl.build(:page_en)
      @page_tw = FactoryGirl.build(:page_tw)
    end

    it "should find the page according to page name and title" do
    end
  end

end
