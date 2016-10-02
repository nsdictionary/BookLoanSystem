require 'test_helper'

class LoanHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_history = loan_histories(:one)
  end

  test "should get index" do
    get loan_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_history_url
    assert_response :success
  end

  test "should create loan_history" do
    assert_difference('LoanHistory.count') do
      post loan_histories_url, params: { loan_history: { book_id: @loan_history.book_id, loan_date: @loan_history.loan_date, return_date: @loan_history.return_date, user_id: @loan_history.user_id } }
    end

    assert_redirected_to loan_history_url(LoanHistory.last)
  end

  test "should show loan_history" do
    get loan_history_url(@loan_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_history_url(@loan_history)
    assert_response :success
  end

  test "should update loan_history" do
    patch loan_history_url(@loan_history), params: { loan_history: { book_id: @loan_history.book_id, loan_date: @loan_history.loan_date, return_date: @loan_history.return_date, user_id: @loan_history.user_id } }
    assert_redirected_to loan_history_url(@loan_history)
  end

  test "should destroy loan_history" do
    assert_difference('LoanHistory.count', -1) do
      delete loan_history_url(@loan_history)
    end

    assert_redirected_to loan_histories_url
  end
end
