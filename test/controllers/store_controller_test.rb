require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.pure-menu-selected'
    assert_select 'p.price', /\$[,\d]+\.\d\d/
  end

end
