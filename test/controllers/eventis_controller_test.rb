require 'test_helper'

class EventisControllerTest < ActionController::TestCase
  setup do
    @eventi = eventis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventi" do
    assert_difference('Eventi.count') do
      post :create, eventi: { kraj: @eventi.kraj, naslov: @eventi.naslov, opis: @eventi.opis, zacetek: @eventi.zacetek }
    end

    assert_redirected_to eventi_path(assigns(:eventi))
  end

  test "should show eventi" do
    get :show, id: @eventi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventi
    assert_response :success
  end

  test "should update eventi" do
    patch :update, id: @eventi, eventi: { kraj: @eventi.kraj, naslov: @eventi.naslov, opis: @eventi.opis, zacetek: @eventi.zacetek }
    assert_redirected_to eventi_path(assigns(:eventi))
  end

  test "should destroy eventi" do
    assert_difference('Eventi.count', -1) do
      delete :destroy, id: @eventi
    end

    assert_redirected_to eventis_path
  end
end
