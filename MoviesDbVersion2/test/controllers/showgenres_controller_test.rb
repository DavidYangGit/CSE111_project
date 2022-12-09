require "test_helper"

class ShowgenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @showgenre = showgenres(:one)
  end

  test "should get index" do
    get showgenres_url
    assert_response :success
  end

  test "should get new" do
    get new_showgenre_url
    assert_response :success
  end

  test "should create showgenre" do
    assert_difference("Showgenre.count") do
      post showgenres_url, params: { showgenre: { sg_genreid: @showgenre.sg_genreid, sg_showid: @showgenre.sg_showid } }
    end

    assert_redirected_to showgenre_url(Showgenre.last)
  end

  test "should show showgenre" do
    get showgenre_url(@showgenre)
    assert_response :success
  end

  test "should get edit" do
    get edit_showgenre_url(@showgenre)
    assert_response :success
  end

  test "should update showgenre" do
    patch showgenre_url(@showgenre), params: { showgenre: { sg_genreid: @showgenre.sg_genreid, sg_showid: @showgenre.sg_showid } }
    assert_redirected_to showgenre_url(@showgenre)
  end

  test "should destroy showgenre" do
    assert_difference("Showgenre.count", -1) do
      delete showgenre_url(@showgenre)
    end

    assert_redirected_to showgenres_url
  end
end
