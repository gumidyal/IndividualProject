require 'test_helper'

class IndividualProject1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @individual_project1 = individual_project1s(:one)
  end

  test "should get index" do
    get individual_project1s_url
    assert_response :success
  end

  test "should get new" do
    get new_individual_project1_url
    assert_response :success
  end

  test "should create individual_project1" do
    assert_difference('IndividualProject1.count') do
      post individual_project1s_url, params: { individual_project1: { description: @individual_project1.description, title: @individual_project1.title } }
    end

    assert_redirected_to individual_project1_url(IndividualProject1.last)
  end

  test "should show individual_project1" do
    get individual_project1_url(@individual_project1)
    assert_response :success
  end

  test "should get edit" do
    get edit_individual_project1_url(@individual_project1)
    assert_response :success
  end

  test "should update individual_project1" do
    patch individual_project1_url(@individual_project1), params: { individual_project1: { description: @individual_project1.description, title: @individual_project1.title } }
    assert_redirected_to individual_project1_url(@individual_project1)
  end

  test "should destroy individual_project1" do
    assert_difference('IndividualProject1.count', -1) do
      delete individual_project1_url(@individual_project1)
    end

    assert_redirected_to individual_project1s_url
  end

end

# Citation: https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/static_pages#sec-testing_titles
