require "test_helper"

class ShowactorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @showactor = showactors(:one)
  end

  test "should get index" do
    get showactors_url
    assert_response :success
  end

  test "should get new" do
    get new_showactor_url
    assert_response :success
  end

  test "should create showactor" do
    assert_difference("Showactor.count") do
      post showactors_url, params: { showactor: { sa_actorid: @showactor.sa_actorid, sa_showid: @showactor.sa_showid } }
    end

    assert_redirected_to showactor_url(Showactor.last)
  end

  test "should show showactor" do
    get showactor_url(@showactor)
    assert_response :success
  end

  test "should get edit" do
    get edit_showactor_url(@showactor)
    assert_response :success
  end

  test "should update showactor" do
    patch showactor_url(@showactor), params: { showactor: { sa_actorid: @showactor.sa_actorid, sa_showid: @showactor.sa_showid } }
    assert_redirected_to showactor_url(@showactor)
  end

  test "should destroy showactor" do
    assert_difference("Showactor.count", -1) do
      delete showactor_url(@showactor)
    end

    assert_redirected_to showactors_url
  end
end
