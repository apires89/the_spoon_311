require 'test_helper'

class MailboxControllerTest < ActionDispatch::IntegrationTest
  test "should get email" do
    get mailbox_email_url
    assert_response :success
  end

end
