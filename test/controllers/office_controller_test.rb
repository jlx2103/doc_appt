require 'test_helper'

class OfficeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get doctors" do
    get :doctors
    assert_response :success
  end

  test "should get patients" do
    get :patients
    assert_response :success
  end

end
