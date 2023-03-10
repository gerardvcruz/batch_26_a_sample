require "test_helper"

class RiceControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rice = rice(:one)
  end

  test "should get index" do
    get rice_index_url
    assert_response :success
  end

  test "should get new" do
    get new_rice_url
    assert_response :success
  end

  test "should create rice" do
    assert_difference("Rice.count") do
      post rice_index_url, params: { rice: { brand: @rice.brand, kg: @rice.kg, price: @rice.price } }
    end

    assert_redirected_to rice_url(Rice.last)
  end

  test "should show rice" do
    get rice_url(@rice)
    assert_response :success
  end

  test "should get edit" do
    get edit_rice_url(@rice)
    assert_response :success
  end

  test "should update rice" do
    patch rice_url(@rice), params: { rice: { brand: @rice.brand, kg: @rice.kg, price: @rice.price } }
    assert_redirected_to rice_url(@rice)
  end

  test "should destroy rice" do
    assert_difference("Rice.count", -1) do
      delete rice_url(@rice)
    end

    assert_redirected_to rice_index_url
  end
end
