require "test_helper"

class ArtitclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artitcle = artitcles(:one)
  end

  test "should get index" do
    get artitcles_url
    assert_response :success
  end

  test "should get new" do
    get new_artitcle_url
    assert_response :success
  end

  test "should create artitcle" do
    assert_difference("Artitcle.count") do
      post artitcles_url, params: { artitcle: { title: @artitcle.title } }
    end

    assert_redirected_to artitcle_url(Artitcle.last)
  end

  test "should show artitcle" do
    get artitcle_url(@artitcle)
    assert_response :success
  end

  test "should get edit" do
    get edit_artitcle_url(@artitcle)
    assert_response :success
  end

  test "should update artitcle" do
    patch artitcle_url(@artitcle), params: { artitcle: { title: @artitcle.title } }
    assert_redirected_to artitcle_url(@artitcle)
  end

  test "should destroy artitcle" do
    assert_difference("Artitcle.count", -1) do
      delete artitcle_url(@artitcle)
    end

    assert_redirected_to artitcles_url
  end
end
