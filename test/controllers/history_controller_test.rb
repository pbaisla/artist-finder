require 'test_helper'

class HistoryControllerTest < ActionController::TestCase
  test "should get searchhistory" do
    get :searchhistory
    assert_response :success
  end

end
