require 'test_helper'

class OneOnOnesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get one_on_ones_new_url
    assert_response :success
  end

  test "should get create" do
    get one_on_ones_create_url
    assert_response :success
  end

  test "should get index" do
    get one_on_ones_index_url
    assert_response :success
  end

end
