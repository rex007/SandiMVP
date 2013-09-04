require 'test_helper'

class EventiControllerTest < ActionController::TestCase
  test "should get naslov:string" do
    get :naslov:string
    assert_response :success
  end

  test "should get opis:text" do
    get :opis:text
    assert_response :success
  end

  test "should get kraj:string" do
    get :kraj:string
    assert_response :success
  end

  test "should get dne:date" do
    get :dne:date
    assert_response :success
  end

  test "should get zacetek:time" do
    get :zacetek:time
    assert_response :success
  end

end
