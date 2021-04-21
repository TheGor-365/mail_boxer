require "application_system_test_case"

class DisscussionsTest < ApplicationSystemTestCase
  setup do
    @disscussion = disscussions(:one)
  end

  test "visiting the index" do
    visit disscussions_url
    assert_selector "h1", text: "Disscussions"
  end

  test "creating a Disscussion" do
    visit disscussions_url
    click_on "New Disscussion"

    fill_in "Title", with: @disscussion.title
    click_on "Create Disscussion"

    assert_text "Disscussion was successfully created"
    click_on "Back"
  end

  test "updating a Disscussion" do
    visit disscussions_url
    click_on "Edit", match: :first

    fill_in "Title", with: @disscussion.title
    click_on "Update Disscussion"

    assert_text "Disscussion was successfully updated"
    click_on "Back"
  end

  test "destroying a Disscussion" do
    visit disscussions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disscussion was successfully destroyed"
  end
end
