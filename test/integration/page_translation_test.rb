require "test_helper"

describe "PageTranslations Integration Test" do
  describe "when locale is set to en" do
    before do
      skip
      get "/?locale=en"
    end

    it "about should be in English" do
      get "/about"

    end

  end

  describe "when locale is set to zh-TW" do

    it "should be in Traditional Chinese" do
    end

  end

end

