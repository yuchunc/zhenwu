require "test_helper"

describe "PageTranslations Integration Test" do
  before do
    loadseeds
  end

  describe "when locale is default to zh-TW" do

    it "About Page" do
      visit "/about"
      assert page.find("h1").has_content?("關於真武")
    end

    it "Course Page" do
      visit "/courses"
      assert page.find("h1").has_content?("真武課程")
    end

    it "Blog Page" do
      visit "/blog"
      assert page.find("h1").has_content?("部落格")
    end

  end

end

