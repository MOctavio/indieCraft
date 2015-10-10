require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#main-menu', minimun: 1
    assert_select '.pure-menu-selected'
    assert_select '.list_description p', minimun: 3
    assert_select '.list_description .price', /\$[,\d]+\.\d\d/
  end

end
