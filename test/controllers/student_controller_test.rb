require "test_helper"

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_new_url
    assert_response :success
  end

  test "should get show" do
    get student_show_url
    assert_response :success
  end
end
