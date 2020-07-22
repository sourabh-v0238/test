require 'test_helper'

class ConverstionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @converstion = converstions(:one)
  end

  test "should get index" do
    get converstions_url
    assert_response :success
  end

  test "should get new" do
    get new_converstion_url
    assert_response :success
  end

  test "should create converstion" do
    assert_difference('Converstion.count') do
      post converstions_url, params: { converstion: {  } }
    end

    assert_redirected_to converstion_url(Converstion.last)
  end

  test "should show converstion" do
    get converstion_url(@converstion)
    assert_response :success
  end

  test "should get edit" do
    get edit_converstion_url(@converstion)
    assert_response :success
  end

  test "should update converstion" do
    patch converstion_url(@converstion), params: { converstion: {  } }
    assert_redirected_to converstion_url(@converstion)
  end

  test "should destroy converstion" do
    assert_difference('Converstion.count', -1) do
      delete converstion_url(@converstion)
    end

    assert_redirected_to converstions_url
  end
end
