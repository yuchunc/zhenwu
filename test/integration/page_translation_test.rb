require "test_helper"

describe "page translations" do

  it "should be in English" do
    #get "/about?locales=en"
    #visit about_path(locale: "en")
    visit("/about?locales=en")
  end

  it "should be in Traditional Chinese" do
  end


end

