require "application_system_test_case"

class ShowgenresTest < ApplicationSystemTestCase
  setup do
    @showgenre = showgenres(:one)
  end

  test "visiting the index" do
    visit showgenres_url
    assert_selector "h1", text: "Showgenres"
  end

  test "should create showgenre" do
    visit showgenres_url
    click_on "New showgenre"

    fill_in "Sg genreid", with: @showgenre.sg_genreid
    fill_in "Sg showid", with: @showgenre.sg_showid
    click_on "Create Showgenre"

    assert_text "Showgenre was successfully created"
    click_on "Back"
  end

  test "should update Showgenre" do
    visit showgenre_url(@showgenre)
    click_on "Edit this showgenre", match: :first

    fill_in "Sg genreid", with: @showgenre.sg_genreid
    fill_in "Sg showid", with: @showgenre.sg_showid
    click_on "Update Showgenre"

    assert_text "Showgenre was successfully updated"
    click_on "Back"
  end

  test "should destroy Showgenre" do
    visit showgenre_url(@showgenre)
    click_on "Destroy this showgenre", match: :first

    assert_text "Showgenre was successfully destroyed"
  end
end
