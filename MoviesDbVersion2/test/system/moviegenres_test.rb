require "application_system_test_case"

class MoviegenresTest < ApplicationSystemTestCase
  setup do
    @moviegenre = moviegenres(:one)
  end

  test "visiting the index" do
    visit moviegenres_url
    assert_selector "h1", text: "Moviegenres"
  end

  test "should create moviegenre" do
    visit moviegenres_url
    click_on "New moviegenre"

    fill_in "Mg genreid", with: @moviegenre.mg_genreid
    fill_in "Mg movieid", with: @moviegenre.mg_movieid
    click_on "Create Moviegenre"

    assert_text "Moviegenre was successfully created"
    click_on "Back"
  end

  test "should update Moviegenre" do
    visit moviegenre_url(@moviegenre)
    click_on "Edit this moviegenre", match: :first

    fill_in "Mg genreid", with: @moviegenre.mg_genreid
    fill_in "Mg movieid", with: @moviegenre.mg_movieid
    click_on "Update Moviegenre"

    assert_text "Moviegenre was successfully updated"
    click_on "Back"
  end

  test "should destroy Moviegenre" do
    visit moviegenre_url(@moviegenre)
    click_on "Destroy this moviegenre", match: :first

    assert_text "Moviegenre was successfully destroyed"
  end
end
