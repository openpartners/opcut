require 'test_helper'

class CutLinksControllerTest < ActionController::TestCase
  setup do
    @cut_link = cut_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cut_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cut_link" do
    assert_difference('CutLink.count') do
      post :create, cut_link: { cut: @cut_link.cut, link: @cut_link.link }
    end

    assert_redirected_to cut_link_path(assigns(:cut_link))
  end

  test "should show cut_link" do
    get :show, id: @cut_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cut_link
    assert_response :success
  end

  test "should update cut_link" do
    put :update, id: @cut_link, cut_link: { cut: @cut_link.cut, link: @cut_link.link }
    assert_redirected_to cut_link_path(assigns(:cut_link))
  end

  test "should destroy cut_link" do
    assert_difference('CutLink.count', -1) do
      delete :destroy, id: @cut_link
    end

    assert_redirected_to cut_links_path
  end
end
