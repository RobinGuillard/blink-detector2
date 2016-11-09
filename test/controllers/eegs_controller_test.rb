require 'test_helper'

class EegsControllerTest < ActionController::TestCase
  setup do
    @eeg = eegs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eegs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eeg" do
    assert_difference('Eeg.count') do
      post :create, eeg: { date: @eeg.date, event: @eeg.event }
    end

    assert_redirected_to eeg_path(assigns(:eeg))
  end

  test "should show eeg" do
    get :show, id: @eeg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eeg
    assert_response :success
  end

  test "should update eeg" do
    patch :update, id: @eeg, eeg: { date: @eeg.date, event: @eeg.event }
    assert_redirected_to eeg_path(assigns(:eeg))
  end

  test "should destroy eeg" do
    assert_difference('Eeg.count', -1) do
      delete :destroy, id: @eeg
    end

    assert_redirected_to eegs_path
  end
end
