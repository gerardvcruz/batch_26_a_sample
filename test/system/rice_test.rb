require "application_system_test_case"

class RiceTest < ApplicationSystemTestCase
  setup do
    @rice = rice(:one)
  end

  test "visiting the index" do
    visit rice_url
    assert_selector "h1", text: "Rice"
  end

  test "should create rice" do
    visit rice_url
    click_on "New rice"

    fill_in "Brand", with: @rice.brand
    fill_in "Kg", with: @rice.kg
    fill_in "Price", with: @rice.price
    click_on "Create Rice"

    assert_text "Rice was successfully created"
    click_on "Back"
  end

  test "should update Rice" do
    visit rice_url(@rice)
    click_on "Edit this rice", match: :first

    fill_in "Brand", with: @rice.brand
    fill_in "Kg", with: @rice.kg
    fill_in "Price", with: @rice.price
    click_on "Update Rice"

    assert_text "Rice was successfully updated"
    click_on "Back"
  end

  test "should destroy Rice" do
    visit rice_url(@rice)
    click_on "Destroy this rice", match: :first

    assert_text "Rice was successfully destroyed"
  end
end
