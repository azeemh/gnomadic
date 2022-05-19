require "test_helper"

class GnomeparcelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gnomeparcel = gnomeparcels(:one)
  end

  test "should get index" do
    get gnomeparcels_url
    assert_response :success
  end

  test "should get new" do
    get new_gnomeparcel_url
    assert_response :success
  end

  test "should create gnomeparcel" do
    assert_difference('Gnomeparcel.count') do
      post gnomeparcels_url, params: { gnomeparcel: { electric: @gnomeparcel.electric, landaddress: @gnomeparcel.landaddress, landhookups: @gnomeparcel.landhookups, latlong: @gnomeparcel.latlong, maps: @gnomeparcel.maps, maxcapacity: @gnomeparcel.maxcapacity, open_to_new_members: @gnomeparcel.open_to_new_members, open_to_visitors: @gnomeparcel.open_to_visitors, population: @gnomeparcel.population, roadaccess: @gnomeparcel.roadaccess, seasonalhazards: @gnomeparcel.seasonalhazards, sewage: @gnomeparcel.sewage, user_id: @gnomeparcel.user_id, vision: @gnomeparcel.vision, water: @gnomeparcel.water, waterbodies: @gnomeparcel.waterbodies, wifi: @gnomeparcel.wifi } }
    end

    assert_redirected_to gnomeparcel_url(Gnomeparcel.last)
  end

  test "should show gnomeparcel" do
    get gnomeparcel_url(@gnomeparcel)
    assert_response :success
  end

  test "should get edit" do
    get edit_gnomeparcel_url(@gnomeparcel)
    assert_response :success
  end

  test "should update gnomeparcel" do
    patch gnomeparcel_url(@gnomeparcel), params: { gnomeparcel: { electric: @gnomeparcel.electric, landaddress: @gnomeparcel.landaddress, landhookups: @gnomeparcel.landhookups, latlong: @gnomeparcel.latlong, maps: @gnomeparcel.maps, maxcapacity: @gnomeparcel.maxcapacity, open_to_new_members: @gnomeparcel.open_to_new_members, open_to_visitors: @gnomeparcel.open_to_visitors, population: @gnomeparcel.population, roadaccess: @gnomeparcel.roadaccess, seasonalhazards: @gnomeparcel.seasonalhazards, sewage: @gnomeparcel.sewage, user_id: @gnomeparcel.user_id, vision: @gnomeparcel.vision, water: @gnomeparcel.water, waterbodies: @gnomeparcel.waterbodies, wifi: @gnomeparcel.wifi } }
    assert_redirected_to gnomeparcel_url(@gnomeparcel)
  end

  test "should destroy gnomeparcel" do
    assert_difference('Gnomeparcel.count', -1) do
      delete gnomeparcel_url(@gnomeparcel)
    end

    assert_redirected_to gnomeparcels_url
  end
end
