require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "should create movie" do
    visit movies_url
    click_on "New movie"

    fill_in "M director", with: @movie.m_director
    fill_in "M movieid", with: @movie.m_movieid
    fill_in "M releasedate", with: @movie.m_releaseDate
    fill_in "M studio", with: @movie.m_studio
    fill_in "M title", with: @movie.m_title
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "should update Movie" do
    visit movie_url(@movie)
    click_on "Edit this movie", match: :first

    fill_in "M director", with: @movie.m_director
    fill_in "M movieid", with: @movie.m_movieid
    fill_in "M releasedate", with: @movie.m_releaseDate
    fill_in "M studio", with: @movie.m_studio
    fill_in "M title", with: @movie.m_title
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie" do
    visit movie_url(@movie)
    click_on "Destroy this movie", match: :first

    assert_text "Movie was successfully destroyed"
  end
end
