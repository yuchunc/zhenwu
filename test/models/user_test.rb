require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save user without email" do
    user = User.new
    refute user.save
  end

  # test "should report some errors" do
  #   some_undefined_variable
  #   assert true
  # end

end
