require "application_system_test_case"

class ArtitclesTest < ApplicationSystemTestCase
  setup do
    @artitcle = artitcles(:one)
  end

  test "visiting the index" do
    visit artitcles_url
    assert_selector "h1", text: "Artitcles"
  end

  test "should create artitcle" do
    visit artitcles_url
    click_on "New artitcle"

    fill_in "Title", with: @artitcle.title
    click_on "Create Artitcle"

    assert_text "Artitcle was successfully created"
    click_on "Back"
  end

  test "should update Artitcle" do
    visit artitcle_url(@artitcle)
    click_on "Edit this artitcle", match: :first

    fill_in "Title", with: @artitcle.title
    click_on "Update Artitcle"

    assert_text "Artitcle was successfully updated"
    click_on "Back"
  end

  test "should destroy Artitcle" do
    visit artitcle_url(@artitcle)
    click_on "Destroy this artitcle", match: :first

    assert_text "Artitcle was successfully destroyed"
  end
end
