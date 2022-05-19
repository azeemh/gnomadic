require "application_system_test_case"

class GnomeparcelsTest < ApplicationSystemTestCase
  setup do
    @gnomeparcel = gnomeparcels(:one)
  end

  test "visiting the index" do
    visit gnomeparcels_url
    assert_selector "h1", text: "Gnomeparcels"
  end

  test "creating a Gnomeparcel" do
    visit gnomeparcels_url
    click_on "New Gnomeparcel"

    check "Electric" if @gnomeparcel.electric
    fill_in "Landaddress", with: @gnomeparcel.landaddress
    fill_in "Landhookups", with: @gnomeparcel.landhookups
    fill_in "Latlong", with: @gnomeparcel.latlong
    fill_in "Maps", with: @gnomeparcel.maps
    fill_in "Maxcapacity", with: @gnomeparcel.maxcapacity
    check "Open to new members" if @gnomeparcel.open_to_new_members
    check "Open to visitors" if @gnomeparcel.open_to_visitors
    fill_in "Population", with: @gnomeparcel.population
    check "Roadaccess" if @gnomeparcel.roadaccess
    fill_in "Seasonalhazards", with: @gnomeparcel.seasonalhazards
    check "Sewage" if @gnomeparcel.sewage
    fill_in "User", with: @gnomeparcel.user_id
    fill_in "Vision", with: @gnomeparcel.vision
    check "Water" if @gnomeparcel.water
    fill_in "Waterbodies", with: @gnomeparcel.waterbodies
    check "Wifi" if @gnomeparcel.wifi
    click_on "Create Gnomeparcel"

    assert_text "Gnomeparcel was successfully created"
    click_on "Back"
  end

  test "updating a Gnomeparcel" do
    visit gnomeparcels_url
    click_on "Edit", match: :first

    check "Electric" if @gnomeparcel.electric
    fill_in "Landaddress", with: @gnomeparcel.landaddress
    fill_in "Landhookups", with: @gnomeparcel.landhookups
    fill_in "Latlong", with: @gnomeparcel.latlong
    fill_in "Maps", with: @gnomeparcel.maps
    fill_in "Maxcapacity", with: @gnomeparcel.maxcapacity
    check "Open to new members" if @gnomeparcel.open_to_new_members
    check "Open to visitors" if @gnomeparcel.open_to_visitors
    fill_in "Population", with: @gnomeparcel.population
    check "Roadaccess" if @gnomeparcel.roadaccess
    fill_in "Seasonalhazards", with: @gnomeparcel.seasonalhazards
    check "Sewage" if @gnomeparcel.sewage
    fill_in "User", with: @gnomeparcel.user_id
    fill_in "Vision", with: @gnomeparcel.vision
    check "Water" if @gnomeparcel.water
    fill_in "Waterbodies", with: @gnomeparcel.waterbodies
    check "Wifi" if @gnomeparcel.wifi
    click_on "Update Gnomeparcel"

    assert_text "Gnomeparcel was successfully updated"
    click_on "Back"
  end

  test "destroying a Gnomeparcel" do
    visit gnomeparcels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gnomeparcel was successfully destroyed"
  end
end
