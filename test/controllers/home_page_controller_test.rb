require "test_helper"

class HomePageControllerTest < ActionDispatch::IntegrationTest
  # Setup method to create a user before each test
  def setup
    @user = User.create(name: "John Doe", email: "john.doe@example.com", password: "Password", phone_number: "+921236547893")
  end

  # Test for the 'index' action
  test "should get index" do

    # Send a GET request to the 'home_page_index_url'
    get "/"

    # Assert that the response was successful (status code 200)
    assert_response :success

    # Assert that the 'index' template was rendered
    assert_template :index

  end
end
