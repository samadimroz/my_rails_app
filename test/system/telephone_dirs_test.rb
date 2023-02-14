require "application_system_test_case"

class TelephoneDirsTest < ApplicationSystemTestCase
  setup do
    @telephone_dir = telephone_dirs(:one)
  end

  test "visiting the index" do
    visit telephone_dirs_url
    assert_selector "h1", text: "Telephone Dirs"
  end

  test "creating a Telephone dir" do
    visit telephone_dirs_url
    click_on "New Telephone Dir"

    fill_in "Area", with: @telephone_dir.area
    fill_in "City", with: @telephone_dir.city
    fill_in "Country", with: @telephone_dir.country
    fill_in "Doorno", with: @telephone_dir.doorno
    fill_in "Emailid", with: @telephone_dir.emailid
    fill_in "Firstname", with: @telephone_dir.firstname
    fill_in "Lastname", with: @telephone_dir.lastname
    fill_in "Phone", with: @telephone_dir.phone
    fill_in "State", with: @telephone_dir.state
    fill_in "Street", with: @telephone_dir.street
    click_on "Create Telephone dir"

    assert_text "Telephone dir was successfully created"
    click_on "Back"
  end

  test "updating a Telephone dir" do
    visit telephone_dirs_url
    click_on "Edit", match: :first

    fill_in "Area", with: @telephone_dir.area
    fill_in "City", with: @telephone_dir.city
    fill_in "Country", with: @telephone_dir.country
    fill_in "Doorno", with: @telephone_dir.doorno
    fill_in "Emailid", with: @telephone_dir.emailid
    fill_in "Firstname", with: @telephone_dir.firstname
    fill_in "Lastname", with: @telephone_dir.lastname
    fill_in "Phone", with: @telephone_dir.phone
    fill_in "State", with: @telephone_dir.state
    fill_in "Street", with: @telephone_dir.street
    click_on "Update Telephone dir"

    assert_text "Telephone dir was successfully updated"
    click_on "Back"
  end

  test "destroying a Telephone dir" do
    visit telephone_dirs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Telephone dir was successfully destroyed"
  end
end
