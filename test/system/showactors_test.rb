require "application_system_test_case"

class ShowactorsTest < ApplicationSystemTestCase
  setup do
    @showactor = showactors(:one)
  end

  test "visiting the index" do
    visit showactors_url
    assert_selector "h1", text: "Showactors"
  end

  test "should create showactor" do
    visit showactors_url
    click_on "New showactor"

    fill_in "Sa actorid", with: @showactor.sa_actorid
    fill_in "Sa showid", with: @showactor.sa_showid
    click_on "Create Showactor"

    assert_text "Showactor was successfully created"
    click_on "Back"
  end

  test "should update Showactor" do
    visit showactor_url(@showactor)
    click_on "Edit this showactor", match: :first

    fill_in "Sa actorid", with: @showactor.sa_actorid
    fill_in "Sa showid", with: @showactor.sa_showid
    click_on "Update Showactor"

    assert_text "Showactor was successfully updated"
    click_on "Back"
  end

  test "should destroy Showactor" do
    visit showactor_url(@showactor)
    click_on "Destroy this showactor", match: :first

    assert_text "Showactor was successfully destroyed"
  end
end
