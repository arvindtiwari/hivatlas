require 'test_helper'

class AddBlogIdToCommentsControllerTest < ActionController::TestCase
  test "should get blog_id:integer" do
    get :blog_id:integer
    assert_response :success
  end

end
