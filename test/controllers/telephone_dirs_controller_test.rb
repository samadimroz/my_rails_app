require "test_helper"

class TelephoneDirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telephone_dir = telephone_dirs(:one)
  end

  test "should get index" do
    get telephone_dirs_url
    assert_response :success
  end

  test "should get new" do
    get new_telephone_dir_url
    assert_response :success
  end

  test "should create telephone_dir" do
    assert_difference('TelephoneDir.count') do
      post telephone_dirs_url, params: { telephone_dir: { area: @telephone_dir.area, city: @telephone_dir.city, country: @telephone_dir.country, doorno: @telephone_dir.doorno, emailid: @telephone_dir.emailid, firstname: @telephone_dir.firstname, lastname: @telephone_dir.lastname, phone: @telephone_dir.phone, state: @telephone_dir.state, street: @telephone_dir.street } }
    end

    assert_redirected_to telephone_dir_url(TelephoneDir.last)
  end

  test "should show telephone_dir" do
    get telephone_dir_url(@telephone_dir)
    assert_response :success
  end

  test "should get edit" do
    get edit_telephone_dir_url(@telephone_dir)
    assert_response :success
  end

  test "should update telephone_dir" do
    patch telephone_dir_url(@telephone_dir), params: { telephone_dir: { area: @telephone_dir.area, city: @telephone_dir.city, country: @telephone_dir.country, doorno: @telephone_dir.doorno, emailid: @telephone_dir.emailid, firstname: @telephone_dir.firstname, lastname: @telephone_dir.lastname, phone: @telephone_dir.phone, state: @telephone_dir.state, street: @telephone_dir.street } }
    assert_redirected_to telephone_dir_url(@telephone_dir)
  end

  test "should destroy telephone_dir" do
    assert_difference('TelephoneDir.count', -1) do
      delete telephone_dir_url(@telephone_dir)
    end

    assert_redirected_to telephone_dirs_url
  end
end
