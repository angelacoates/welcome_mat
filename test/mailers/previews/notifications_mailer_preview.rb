# Preview all emails at http://localhost:3000/rails/mailers/notifications_mailer
class NotificationsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/likes_a_house
  def likes_a_house
    NotificationsMailer.likes_a_house(Home.first, User.last)
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/homes_added
  def homes_added
    NotificationsMailer.homes_added
  end

end
