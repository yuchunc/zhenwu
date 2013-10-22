require "test_helper"

describe Tagging do
  before do
    @tagging = Tagging.new
  end

  it "must be valid" do
    @tagging.valid?.must_equal true
  end
end
