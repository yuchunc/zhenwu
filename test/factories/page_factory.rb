require 'factory_girl'

FactoryGirl.define do
  factory :page_en, class: Page do
    name "somepage"
    title "Test Page"
    language "en"
  end

  factory :page_zh_tw, class: Page do
    name "somepage"
    title "測試頁"
    language "zh-TW"
  end
end
