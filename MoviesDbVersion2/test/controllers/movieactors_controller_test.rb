require "test_helper"

class MovieactorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movieactor = movieactors(:one)
  end

  test "should get index" do
    get movieactors_url
    assert_response :success
  end

  test "should get new" do
    get new_movieactor_url
    assert_response :success
  end

  test "should create movieactor" do
    assert_difference("Movieactor.count") do
      post movieactors_url, params: { movieactor: { ma_actorid: @movieactor.ma_actorid, ma_movieid: @movieactor.ma_movieid } }
    end

    assert_redirected_to movieactor_url(Movieactor.last)
  end

  test "should show movieactor" do
    get movieactor_url(@movieactor)
    assert_response :success
  end

  test "should get edit" do
    get edit_movieactor_url(@movieactor)
    assert_response :success
  end

  test "should update movieactor" do
    patch movieactor_url(@movieactor), params: { movieactor: { ma_actorid: @movieactor.ma_actorid, ma_movieid: @movieactor.ma_movieid } }
    assert_redirected_to movieactor_url(@movieactor)
  end

  test "should destroy movieactor" do
    assert_difference("Movieactor.count", -1) do
      delete movieactor_url(@movieactor)
    end

    assert_redirected_to movieactors_url
  end
end
