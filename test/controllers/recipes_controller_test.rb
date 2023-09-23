require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/recipes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Recipe.count, data.length
  end

  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: {
        user_id: 1,
        name: "toast2",
        chef: "Me",
        prep_time: 10,
        cook_time: 15,
        temperature: 225
      }
      assert_response 200
    end
  end
end
