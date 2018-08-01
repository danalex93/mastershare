require "application_system_test_case"

class WorkshopsTest < ApplicationSystemTestCase
  setup do
    @workshop = workshops(:one)
  end

  test "visiting the index" do
    visit workshops_url
    assert_selector "h1", text: "Workshops"
  end

  test "creating a Workshop" do
    visit workshops_url
    click_on "New Workshop"

    fill_in "Description", with: @workshop.description
    fill_in "Mentor", with: @workshop.mentor_id
    fill_in "Quotas", with: @workshop.quotas
    fill_in "Schedule", with: @workshop.schedule
    fill_in "Title", with: @workshop.title
    click_on "Create Workshop"

    assert_text "Workshop was successfully created"
    click_on "Back"
  end

  test "updating a Workshop" do
    visit workshops_url
    click_on "Edit", match: :first

    fill_in "Description", with: @workshop.description
    fill_in "Mentor", with: @workshop.mentor_id
    fill_in "Quotas", with: @workshop.quotas
    fill_in "Schedule", with: @workshop.schedule
    fill_in "Title", with: @workshop.title
    click_on "Update Workshop"

    assert_text "Workshop was successfully updated"
    click_on "Back"
  end

  test "destroying a Workshop" do
    visit workshops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workshop was successfully destroyed"
  end
end
