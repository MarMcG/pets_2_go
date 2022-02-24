require "test_helper"

class MyPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_pets_index_url
    assert_response :success
  end
end
