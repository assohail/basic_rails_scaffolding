require "application_system_test_case"

class AjmalsTest < ApplicationSystemTestCase
  setup do
    @ajmal = ajmals(:one)
  end

  test "visiting the index" do
    visit ajmals_url
    assert_selector "h1", text: "Ajmals"
  end

  test "should create ajmal" do
    visit ajmals_url
    click_on "New ajmal"

    check "Foozbol" if @ajmal.foozbol
    fill_in "Mobile", with: @ajmal.mobile
    click_on "Create Ajmal"

    assert_text "Ajmal was successfully created"
    click_on "Back"
  end

  test "should update Ajmal" do
    visit ajmal_url(@ajmal)
    click_on "Edit this ajmal", match: :first

    check "Foozbol" if @ajmal.foozbol
    fill_in "Mobile", with: @ajmal.mobile
    click_on "Update Ajmal"

    assert_text "Ajmal was successfully updated"
    click_on "Back"
  end

  test "should destroy Ajmal" do
    visit ajmal_url(@ajmal)
    click_on "Destroy this ajmal", match: :first

    assert_text "Ajmal was successfully destroyed"
  end
end
