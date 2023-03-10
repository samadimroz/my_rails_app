require "test_helper"

class StudentdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentdatum = studentdata(:one)
  end

  test "should get index" do
    get studentdata_url
    assert_response :success
  end

  test "should get new" do
    get new_studentdatum_url
    assert_response :success
  end

  test "should create studentdatum" do
    assert_difference('Studentdatum.count') do
      post studentdata_url, params: { studentdatum: { address: @studentdatum.address, age: @studentdatum.age, course: @studentdatum.course, image: @studentdatum.image, mobile: @studentdatum.mobile, name: @studentdatum.name, rno: @studentdatum.rno } }
    end

    assert_redirected_to studentdatum_url(Studentdatum.last)
  end

  test "should show studentdatum" do
    get studentdatum_url(@studentdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentdatum_url(@studentdatum)
    assert_response :success
  end

  test "should update studentdatum" do
    patch studentdatum_url(@studentdatum), params: { studentdatum: { address: @studentdatum.address, age: @studentdatum.age, course: @studentdatum.course, image: @studentdatum.image, mobile: @studentdatum.mobile, name: @studentdatum.name, rno: @studentdatum.rno } }
    assert_redirected_to studentdatum_url(@studentdatum)
  end

  test "should destroy studentdatum" do
    assert_difference('Studentdatum.count', -1) do
      delete studentdatum_url(@studentdatum)
    end

    assert_redirected_to studentdata_url
  end
end
