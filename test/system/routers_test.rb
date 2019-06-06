require "application_system_test_case"

class RoutersTest < ApplicationSystemTestCase
  setup do
    @router = routers(:one)
  end

  test "visiting the index" do
    visit routers_url
    assert_selector "h1", text: "Routers"
  end

  test "creating a Router" do
    visit routers_url
    click_on "New Router"

    fill_in "Latitude", with: @router.latitude
    fill_in "Longitude", with: @router.longitude
    fill_in "Name", with: @router.name
    click_on "Create Router"

    assert_text "Router was successfully created"
    click_on "Back"
  end

  test "updating a Router" do
    visit routers_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @router.latitude
    fill_in "Longitude", with: @router.longitude
    fill_in "Name", with: @router.name
    click_on "Update Router"

    assert_text "Router was successfully updated"
    click_on "Back"
  end

  test "destroying a Router" do
    visit routers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Router was successfully destroyed"
  end
end
