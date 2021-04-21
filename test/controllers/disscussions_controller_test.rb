require 'test_helper'

class DisscussionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disscussion = disscussions(:one)
  end

  test "should get index" do
    get disscussions_url
    assert_response :success
  end

  test "should get new" do
    get new_disscussion_url
    assert_response :success
  end

  test "should create disscussion" do
    assert_difference('Disscussion.count') do
      post disscussions_url, params: { disscussion: { title: @disscussion.title } }
    end

    assert_redirected_to disscussion_url(Disscussion.last)
  end

  test "should show disscussion" do
    get disscussion_url(@disscussion)
    assert_response :success
  end

  test "should get edit" do
    get edit_disscussion_url(@disscussion)
    assert_response :success
  end

  test "should update disscussion" do
    patch disscussion_url(@disscussion), params: { disscussion: { title: @disscussion.title } }
    assert_redirected_to disscussion_url(@disscussion)
  end

  test "should destroy disscussion" do
    assert_difference('Disscussion.count', -1) do
      delete disscussion_url(@disscussion)
    end

    assert_redirected_to disscussions_url
  end
end
