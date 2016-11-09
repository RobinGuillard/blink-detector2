require 'test_helper'

class EegEventsControllerTest < ActionController::TestCase
  setup do
    @eeg_event = eeg_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eeg_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eeg_event" do
    assert_difference('EegEvent.count') do
      post :create, eeg_event: { date: @eeg_event.date, event: @eeg_event.event }
    end

    assert_redirected_to eeg_event_path(assigns(:eeg_event))
  end

  test "should show eeg_event" do
    get :show, id: @eeg_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eeg_event
    assert_response :success
  end

  test "should update eeg_event" do
    patch :update, id: @eeg_event, eeg_event: { date: @eeg_event.date, event: @eeg_event.event }
    assert_redirected_to eeg_event_path(assigns(:eeg_event))
  end

  test "should destroy eeg_event" do
    assert_difference('EegEvent.count', -1) do
      delete :destroy, id: @eeg_event
    end

    assert_redirected_to eeg_events_path
  end
end
