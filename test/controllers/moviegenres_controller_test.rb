require "test_helper"

class MoviegenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moviegenre = moviegenres(:one)
  end

  test "should get index" do
    get moviegenres_url
    assert_response :success
  end

  test "should get new" do
    get new_moviegenre_url
    assert_response :success
  end

  test "should create moviegenre" do
    assert_difference("Moviegenre.count") do
      post moviegenres_url, params: { moviegenre: { mg_genreid: @moviegenre.mg_genreid, mg_movieid: @moviegenre.mg_movieid } }
    end

    assert_redirected_to moviegenre_url(Moviegenre.last)
  end

  test "should show moviegenre" do
    get moviegenre_url(@moviegenre)
    assert_response :success
  end

  test "should get edit" do
    get edit_moviegenre_url(@moviegenre)
    assert_response :success
  end

  test "should update moviegenre" do
    patch moviegenre_url(@moviegenre), params: { moviegenre: { mg_genreid: @moviegenre.mg_genreid, mg_movieid: @moviegenre.mg_movieid } }
    assert_redirected_to moviegenre_url(@moviegenre)
  end

  test "should destroy moviegenre" do
    assert_difference("Moviegenre.count", -1) do
      delete moviegenre_url(@moviegenre)
    end

    assert_redirected_to moviegenres_url
  end
end
