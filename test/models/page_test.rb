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
      @page_en = FactoryGirl.create(:page_en, name: "test")
      @page_tw = FactoryGirl.create(:page_zh_tw, name: "test")
    end

    it "should find English page by page name and language" do
      @page = Page.find_translated("test", :en)
      @page.must_equal @page_en
    end

    it "should find Taiwan page by page name and language" do
      @page = Page.find_translated("test", :"zh-TW")
      @page.must_equal @page_tw
    end
  end

end
