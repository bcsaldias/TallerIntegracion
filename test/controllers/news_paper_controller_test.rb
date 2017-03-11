require 'test_helper'

class NewsPaperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_paper_index_url
    assert_response :success
  end

end
