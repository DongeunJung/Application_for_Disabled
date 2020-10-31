require 'test_helper'

class AccomodationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accomodations_index_url
    assert_response :success
  end

end
