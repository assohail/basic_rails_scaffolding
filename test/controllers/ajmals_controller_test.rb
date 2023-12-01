require "test_helper"

class AjmalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ajmal = ajmals(:one)
  end

  test "should get index" do
    get ajmals_url
    assert_response :success
  end

  test "should get new" do
    get new_ajmal_url
    assert_response :success
  end

  test "should create ajmal" do
    assert_difference("Ajmal.count") do
      post ajmals_url, params: { ajmal: { foozbol: @ajmal.foozbol, mobile: @ajmal.mobile } }
    end

    assert_redirected_to ajmal_url(Ajmal.last)
  end

  test "should show ajmal" do
    get ajmal_url(@ajmal)
    assert_response :success
  end

  test "should get edit" do
    get edit_ajmal_url(@ajmal)
    assert_response :success
  end

  test "should update ajmal" do
    patch ajmal_url(@ajmal), params: { ajmal: { foozbol: @ajmal.foozbol, mobile: @ajmal.mobile } }
    assert_redirected_to ajmal_url(@ajmal)
  end

  test "should destroy ajmal" do
    assert_difference("Ajmal.count", -1) do
      delete ajmal_url(@ajmal)
    end

    assert_redirected_to ajmals_url
  end
end
