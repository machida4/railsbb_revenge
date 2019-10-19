require 'test_helper'

class ImageListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get image_list_index_url
    assert_response :success
  end

end
