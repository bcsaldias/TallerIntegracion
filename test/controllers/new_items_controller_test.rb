require 'test_helper'

class NewItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_item = new_items(:one)
  end

  test "should get index" do
    get new_items_url
    assert_response :success
  end

  test "should get new" do
    get new_new_item_url
    assert_response :success
  end

  test "should create new_item" do
    assert_difference('NewItem.count') do
      post new_items_url, params: { new_item: { body: @new_item.body, lead: @new_item.lead, title: @new_item.title } }
    end

    assert_redirected_to new_item_url(NewItem.last)
  end

  test "should show new_item" do
    get new_item_url(@new_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_item_url(@new_item)
    assert_response :success
  end

  test "should update new_item" do
    patch new_item_url(@new_item), params: { new_item: { body: @new_item.body, lead: @new_item.lead, title: @new_item.title } }
    assert_redirected_to new_item_url(@new_item)
  end

  test "should destroy new_item" do
    assert_difference('NewItem.count', -1) do
      delete new_item_url(@new_item)
    end

    assert_redirected_to new_items_url
  end
end
