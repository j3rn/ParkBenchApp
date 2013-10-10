require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "names" do 
    # No name
    @user.name = ""
    assert !@user.save

    # A name (success)
    @user.name = "Joe"
    assert @user.save
  end

  test "emails" do
    # Not email
    @user.email = "lorem ipsum"
    assert !@user.save

    # Successful email
    @user.email = "j3rn@j3rn.com"
    assert @user.save
  end

  test "passwords" do
    # Too short of a password
    @user.password = "short"
    @user.password_confirmation = "short"
    assert !@user.save
  
    # Mismatched password
    @user.password = "loremipsum"
    @user.password_confirmation = "ipsumlorem"
    assert !@user.save

    # No password confirmation
    @user.password = "aRatherBadPassword"
    @user.password_confirmation = ""
    assert !@user.save

    # Successful password set
    @user.password = "somethingSecret"
    @user.password_confirmation = "somethingSecret"
    assert @user.save
  end
end
