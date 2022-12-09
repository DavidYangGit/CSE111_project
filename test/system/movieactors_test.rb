require "application_system_test_case"

class MovieactorsTest < ApplicationSystemTestCase
  setup do
    @movieactor = movieactors(:one)
  end

  test "visiting the index" do
    visit movieactors_url
    assert_selector "h1", text: "Movieactors"
  end

  test "should create movieactor" do
    visit movieactors_url
    click_on "New movieactor"

    fill_in "Ma actorid", with: @movieactor.ma_actorid
    fill_in "Ma movieid", with: @movieactor.ma_movieid
    click_on "Create Movieactor"

    assert_text "Movieactor was successfully created"
    click_on "Back"
  end

  test "should update Movieactor" do
    visit movieactor_url(@movieactor)
    click_on "Edit this movieactor", match: :first

    fill_in "Ma actorid", with: @movieactor.ma_actorid
    fill_in "Ma movieid", with: @movieactor.ma_movieid
    click_on "Update Movieactor"

    assert_text "Movieactor was successfully updated"
    click_on "Back"
  end

  test "should destroy Movieactor" do
    visit movieactor_url(@movieactor)
    click_on "Destroy this movieactor", match: :first

    assert_text "Movieactor was successfully destroyed"
  end
end
