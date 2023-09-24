require "test_helper"

class DirectionsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/directions.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Direction.count, data.length
  end
end
