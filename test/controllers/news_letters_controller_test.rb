require 'test_helper'

class NewsLettersControllerTest < ActionController::TestCase
  setup do
    @news_letter = news_letters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_letters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_letter" do
    assert_difference('NewsLetter.count') do
      post :create, news_letter: { hivatlas_daily_digest: @news_letter.hivatlas_daily_digest, latest_job_weekly: @news_letter.latest_job_weekly, new_classified_adds: @news_letter.new_classified_adds, new_iec_weekly: @news_letter.new_iec_weekly, new_polls_weekly: @news_letter.new_polls_weekly }
    end

    assert_redirected_to news_letter_path(assigns(:news_letter))
  end

  test "should show news_letter" do
    get :show, id: @news_letter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_letter
    assert_response :success
  end

  test "should update news_letter" do
    patch :update, id: @news_letter, news_letter: { hivatlas_daily_digest: @news_letter.hivatlas_daily_digest, latest_job_weekly: @news_letter.latest_job_weekly, new_classified_adds: @news_letter.new_classified_adds, new_iec_weekly: @news_letter.new_iec_weekly, new_polls_weekly: @news_letter.new_polls_weekly }
    assert_redirected_to news_letter_path(assigns(:news_letter))
  end

  test "should destroy news_letter" do
    assert_difference('NewsLetter.count', -1) do
      delete :destroy, id: @news_letter
    end

    assert_redirected_to news_letters_path
  end
end
