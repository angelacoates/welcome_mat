require 'test_helper'

class NotificationsMailerTest < ActionMailer::TestCase
  test "likes_a_house" do
    mail = NotificationsMailer.likes_a_house
    assert_equal "Likes a house", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "homes_added" do
    mail = NotificationsMailer.homes_added
    assert_equal "Homes added", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
